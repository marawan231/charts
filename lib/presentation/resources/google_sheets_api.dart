// // ignore_for_file: avoid_print

// import 'dart:convert';

// import 'package:charts/presentation/models/user_fields.dart';

// import 'package:gsheets/gsheets.dart';

// class UsersSheetApi {
//   static const _credentials = r''' 
  
// {
//   "type": "service_account",
//   "project_id": "gsheet-355022",
//   "private_key_id": "d69953833d1bf9dfd92e48ef842046fa0277bd75",
//   "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCuV3NCWxOqRrbe\nvU4maHpawJbDBBzvwRIMGLAVkx1Y9b5Sui67HB/7/T5FT1HovfA6adCErQdmOFCi\nSS+tBguoyfhdMYwXCq9wu1B4ihI0u2FnN45Jc8liA2n6DVoXATenxCbWlganwcg7\ntxGJVy1D/JabpQL/rPPGK9OpxsyG3KPmjtA4G1iusF58YHpVNK7U2DYB+b7lbuOH\nbgxxbo0Iniuyyp5C69UW81ekgijJRtyBQwVOJROQOuNYFBKuu4u0lkyebeeidHzJ\nw9SWBAOuVZ2XltF5dPd3HInpxnRKJYpjwuoSHSFcHB0kCsvSd/oahK1nXmrOvypN\ncBufsAr1AgMBAAECggEAD1h7n1I2Krb37vOWYGnlczC5uuEVM8Lrz4xdjqVlxoHP\nxqcqtXK/tSxQtRF+GGo3lGMVMch4YUM0HcTElIp2r9zvQDMiejJV+12rGW3im/YH\n/pzbDy4VtZhIiMEKHM8ROT9aJ9AKAyD0etHqkj5nkDEFVLfmlqvmw5rx+GMbETe1\nj9mTytJHjplhC6WwO0nRrYrtezex2kqWbhwqdsE/kQ85veNMp9L8rGxpISXCrFvQ\nfl1q9+wYugKOA0bGIc1qR9zE93ASk8x9nl8+UP2f12Wr7xf6x5DBnslXa9HppdOV\nmTy7/iXRvjs/c0DubxOecxxGm/KcbmufwkcRzAhAVQKBgQDtCNR2vGfMfitlnLiA\nMrnmGc5RpCmAn5h+xX0oYGy7lFDHukGJ0HCcEeh0R7VGAf8QNRS65Bgv0GN6vC7v\nMscPYzGrcuLsUmHxDErGvH3t1ag8Plquu8tCaEkMCSlVUGR0IFMz0Mv/jAZh0Lg3\nBxUqfFMS5RVBojU/yuJCPgrJSwKBgQC8SnvatCNqxzQ19GI6lOt6xMrvpBU6/5E4\naRrbJmIvOHsZmMrJ6blADr+tlj1NwpTTzqpdvTrc/8lra9D7TiQt+maW/UpLncsa\n5sAt9dJqFYhRk/7WWceDJNSeWuV2m4Lk7oIlMmxOJPaHvqE9+0SH1b2lnH6g7DSm\nEwWGYX4UvwKBgGGBY1zgjdZaBGINQPxDYaNc9DkzTXtCq4lileSZHcFf9obigHk/\njEM3PqcupEwDIDg7jaZ/k89/apyfcrMk8SvMQy9i2CQck3uD8fKksSy32jfF8qm0\nSJ2tpnbUAfO9WUVH0tIazv/1St7L7Ct+t189uzKnl8HjBwKR49caDHfXAoGAGswC\n6nI+pCCrlo4sOKgfBz7gntBcUSQ0F7Ilp1DEInJIWrE7ExdXTP2MW/kIyntJ0QcV\nife3W+JvWQFkIY/SaFS9qvlrTG2tjSuP6DqW8pAT8YA9gWYPleN0+wB2rbWeIFSt\nYvvVHB34lAMWUYrkCuzpa5tlDiPvrj8Ax0oytmMCgYEAlUjPQcUJJomXWLZ2IKhU\ngJza3xkQSpqbDA/RC0SuqM8fkrZhcWpFAU3PM3Pc+X5NoX9hG8S5yKADnnJQ4RkI\n7kI4CAKk6XBKY03yLbdAUpECAbyAupQoRCLGWjbqGmoDXa9ajA4OLRRI1jA8/ffF\nDJ+JjK8QHrhNTz+oOXJfWSU=\n-----END PRIVATE KEY-----\n",
//   "client_email": "gsheets@gsheet-355022.iam.gserviceaccount.com",
//   "client_id": "111696277550121629481",
//   "auth_uri": "https://accounts.google.com/o/oauth2/auth",
//   "token_uri": "https://oauth2.googleapis.com/token",
//   "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
//   "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets%40gsheet-355022.iam.gserviceaccount.com"
// }


//  ''';

// /* 

// {
//   "type": "service_account",
//   "project_id": "plucky-courier-355102",
//   "private_key_id": "4d8c58b022d5a82d453ed09d401a3fdf7d0a6500",
//   "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC57B6WkDMb06Im\n8vLXXWhOaY8oKKScsqMg33Z/ht3A4uI3aif7T7kYhOZcxX3wmdFhCqzFwOI20iWe\nqooDAapxl7PYJXIDiIWoznJmTwtVJvGlEyanCApRanUkw+Uh9PmLt16qhSi+CQAe\nEj/Ydlm7DKwhos/3fWNxInMpqcijEO9yvZrqz5MjmzJoLTkzfXRP34v5fjPf8ndf\nWJQYRBgjSZRiwXSSZfW8TmpBIia6HLT9TuoHbR0+fKJSm4kytgisgt21cmTQm8yF\ns9KxyJrWYHRHXDMep0jdu2vEQg0QJ7Kbs5YGfXcuLYQAmngxb3uAvzPBoZAUSwgX\n2Id4W0ldAgMBAAECggEAFi1xuqEJz6xvf7jkOcdlHVFfJ7mtZRmz9sRhJLYoNo15\n0YVirookeKXFutQ+ARjADpTQ5ifrdAGeRi5ulww4UiN36vUQhBZhZzD1GXodTnN+\nSKQfrLX7URnjTlbluqa3q7BcZPfMU9rL/kpL/lyjuHm7AKokp4938LNczF/51GWI\n/WxJwb7GAbwdVEakOdDQ7BbWbwdv4pjix1ht56hw/2mAeg03Qf/DO3WeCgi228VB\nEqj/Gl4OrSj6YAACpflP1e4oXe+Txbm8gbim1fq49bu94KO3boNurYDndlf2joLQ\np0JHK1wGvoIB76G3LGpj70hPhLzpBYx7R5/81VtpSwKBgQDvQ9Y3G5qTdlDHExkH\nsM+nfUZ5AiNfH54sw9c7iY2QSIt4l0Ni1fGBRbbjF5YmIVi3M9cOV96hFdf4nBZy\nF2kEj6z2O1yEd1Fqz/rXQkJ1d5Co49dq+zY9LEJwjHdnHA63rryS8ky/bMn0F3TK\nTM1d4vE8/0lljskzQ9Hqudf/VwKBgQDG7Sey/ZvMwUdfJ24y1o8f697CUIutE75U\nlnSVL44doLsynioL7tG1/8piWYNT8D7hN86c4aNPiKcJND1R/IDo9RjlGYQpXWI2\nw3Rso0uQQhYAIboPE88v6eBuKxaTVnDu8BP+2Zl0sDih8yV9OgkTyWIA4FwBYE5w\nxCJ/bJ7wawKBgA0naph/AQGIaKp5J1Af7Vqk7YHrlyw8ncKSRbv1NP4wrtJDZqYB\nYxSbU5Gqk0unW6w+wlz8gbXTcJsvYaCGHvTsPTMQUmbJ9ITtyDmbX/H7T82pMQel\npfa4/zIW1t2pUjnQ9ncRsRx5C6VKwNX6YPP/bQnQcyWNMwyJdvnzm6djAoGAWp9v\nlnsynvTuLssnyME2MrShpqRK/W4hJyfjtJMViynOHiEvxn/lyaPd7zAYRAUOoEts\nNMwWOgVnEypZRSBjGb2OudAGBVIljA0+3L8HjZCNtUGoIXZEzO8e7xFyF20pxbBZ\na6B16FLfeefrDEGEIR99JikPwRC+q2Cu1p4FSkECgYEA3sNrhitej7O1jBQ5LEKf\nKDN+Rg/2CyhCnfuTPtMk17PO9VHPPgqy8XClDUCWHoMNyO+XmL3aw/4zXeLx37Uo\nAeBAGwV/AJgN9auYCj7DwTMrUfyqZqu164+XwvHUuCTvPBMnUgVSATZNQwy2bFxK\n678LycBEVjP5AIMzQJtu/hE=\n-----END PRIVATE KEY-----\n",
//   "client_email": "googlesheet@plucky-courier-355102.iam.gserviceaccount.com",
//   "client_id": "101489012184971741235",
//   "auth_uri": "https://accounts.google.com/o/oauth2/auth",
//   "token_uri": "https://oauth2.googleapis.com/token",
//   "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
//   "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/googlesheet%40plucky-courier-355102.iam.gserviceaccount.com"
// }
//  */

//   static const _spreadSheetId = '1-8wFdvyAaxfykm3Qn033sbo1XTaR_Qt6kq3FCINia9E';

//   static final _gsheet = GSheets(_credentials);

//   static Worksheet? _userSheet;

//   static Future init() async {
//     try {
//       final spreadsheet = await _gsheet.spreadsheet(_spreadSheetId);

//       _userSheet =
//           await _getWorkSheet(spreadsheet: spreadsheet, title: 'Users');
//       // final firstRow = UserFields.getFields();
//       // _userSheet!.values.insertRow(1, firstRow);
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   static Future<User?> getById(int id) async {
//     if (_userSheet == null) return null;

//     final json = await _userSheet!.values.map.rowByKey(id, fromColumn: 1);
//     return json == null ? null : User.fromJson(json);
//   }

//   static Future<Worksheet> _getWorkSheet({
//     required Spreadsheet spreadsheet,
//     required String title,
//   }) async {
//     try {
//       return await spreadsheet.addWorksheet(title);
//     } catch (e) {
//       return spreadsheet.worksheetByTitle(title)!;
//     }
//   }
// }

// 