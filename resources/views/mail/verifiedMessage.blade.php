<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Contact Message from</title>
    <style>
        tr{
            width: 100%;
            text-align: left;
        }
        tr td{
            border: 1px soid rgb(80, 70, 70);
        }
    </style>
  </head>
  <body>
      <h2 class="text-danger text-center m-5"> Account Verified Message From <a href="{{ route('index') }}">{{ env('APP_NAME') }}</a></h2>
      <table style="text-align: left">
          <tr>
              <td><strong>Name</strong></td>
              <td style="width: 20%">{{ $message_info->name }}</td>
          </tr>
          <tr>
              <td><strong>Email</strong></td>
              <td style="width: 55%">{{ $message_info->email }}</td>
          </tr>
          <tr>
              <td><strong>What's app Number</strong></td>
                <td style="width: 25%">{{ $message_info->whatsapp_number }}</td>
          </tr>
          <tr>
              <td><strong>Instagram Id name</strong></td>
                <td style="width: 25%">{{ $message_info->instagram }}</td>
          </tr>
          <tr>
              {{-- <td><strong>Time</strong></td>
                <td style="width: 25%">{{ $message_info->created_at }}</td> --}}
           </tr>
           

      </table>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   </body>
</html>
