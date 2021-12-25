<%@ Page Language="C#" CodeBehind="index.aspx.cs" Inherits="index"%>
<!DOCTYPE html>
<html>

<head>
  <title>Nicepay net framework</title>
  <meta httpEquiv="x-ua-compatible" content="ie=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
  <h1>NICEPAY TEST</h1>
  <button onclick="clientAuth()">clientAuth 결제하기</button>


  <script src="https://pay.nicepay.co.kr/v1/js/"></script>
  <!--<script src="https://nicepay.azurewebsites.net/"></script>-->

  <script>
      function clientAuth() {


          AUTHNICE.requestPay({
              clientId: 'S1_0a462bef95e446438d1383e63ce02eba',
            method: 'card',
            orderId: '<%= orderId %>',
              amount: '<%= pay %>',
            vbankHolder: "나이스",
              goodsName: '메이데이 - 결제',
            // returnUrl: 'http://localhost:8080/response',
              returnUrl: 'https://nicepay.azurewebsites.net/response',
            fnError: function (result) {
              alert('개발자확인용 : ' + result.errorMsg + '')
            }
      });
      }
  </script>
</body>

</html>