<!DOCTYPE html>
<html lang="de">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>HAW Hamburg Kalender Bot</title>
  <meta name="format-detection" content="telephone=no">
  <style type="text/css">
    body {
      background-color: #333333;
      font-family: 'Roboto Condensed', sans-serif;
      text-align: center;
      font-size: 10vmin;
    }

    * {
      color: #00A86B;
    }

    .content {
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
    }

    .calendaricon {
      position: relative;
      left: 50%;
      transform: translateX(-50%);
      background-color: #00A86B;
      width: 30vmin;
      padding: 4vmin;
      padding-top: 12vmin;
    }

    .calendaricon>div {
      background-color: #333333;
      width: 30vmin;
      height: 26vmin;
      font-size: 23vmin;
    }
  </style>
</head>
<?php
  $link = $_GET['url'];
?>

<body>
  <div class="content">
    <a href="webcal://<?php echo $link; ?>">
      <div class="calendaricon">
        <div>
          <?php echo date('d'); ?>
        </div>
      </div>
      Subscribe Calendar</a>
    </a>
  </div>
</body>

</html>
