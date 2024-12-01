import 'dart:developer';

import 'package:annual_leave/core/extensions/extention.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:googleapis/sheets/v4.dart' as sheets;
import 'package:googleapis/sheets/v4.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart';

class GoogleSheetsService {
  final Dio _dio = Dio();

  Future<void> fetchSheetData(String accessToken, String spreadsheetId) async {
    final url =
        'https://docs.google.com/spreadsheets/d/$spreadsheetId/edit?gid=0#gid=0';

    try {
      final response = await _dio.get(
        url,
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
            'Content-Type': 'application/json',
          },
        ),
      );

      log('Sheet Data: ${response.data}');
    } on DioError catch (e) {
      log('Dio error: ${e.response?.statusCode} ${e.message}');
    }
  }

  static getSheetData(String accessToken, sheetId) async {
    final httpClient = authenticatedClient(
        Client(),
        AccessCredentials(
            AccessToken('Bearer', accessToken,
                DateTime.now().add(const Duration(hours: 1)).toUtc()),
            null,
            [
              SheetsApi.spreadsheetsScope,
            ]));
    // final httpClient = await clientViaApplicationDefaultCredentials(scopes: [
    //   SheetsApi.spreadsheetsScope,
    // ]);
    try {
      final sheetApi = SheetsApi(httpClient);

      final sheet = await sheetApi.spreadsheets.get(sheetId);
      final items = sheet.sheets?.first;
      kdp(name: " items?.toJson();", msg: items?.toJson(), c: 'm');
    } finally {
      httpClient.close();
    }
  }

  // final _scopes = [sheets.SheetsApi.spreadsheetsScope];

  Future<void> readFromSheet() async {
    // final googleSignIn = GoogleSignIn(scopes: _scopes);
    // final account = await googleSignIn.signIn();
    final accountCredentials = ServiceAccountCredentials.fromJson(
      await rootBundle
          .loadString("assets/certificates/annula-leav-d27ab5e366b5.json"),
    );
    final scopes = [sheets.SheetsApi.spreadsheetsScope];

    final authClient =
        await clientViaServiceAccount(accountCredentials, scopes);

    final sheetsApi = sheets.SheetsApi(authClient);
    // Add your spreadsheet ID
    const range = "Sheet1!A1:C10"; // Adjust range as needed

    final response =
        await sheetsApi.spreadsheets.values.get(googleSheetId2, range);
    print('Sheet Data: ${response.values}');
  }
}
