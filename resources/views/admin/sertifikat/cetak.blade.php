<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
</head>
<body>
    <table border=0 width="100%">
        <tr>
            <td width="15%" style="text-align: right">
                <img src="/bpr.png" width="50%">
            </td>
            <td style="text-align: center">
                <b>BPR Multidhana Bersama<br/></b>
                Alamat: Jl. A Yani Km 9A Kelurahan Mandarsari, Kecamatan Kertak Hanyar, Banjarmasin.
                

            </td>
            <td width="15%" style="text-align: right">
                
            </td>
        </tr>
        <tr>
            <td colspan=3 style="text-align:center"><br/><strong><H2>SERTIFIKAT DEPOSITO BERJANGKA</H2></strong></td>
        </tr>
    </table>
    <br/>
    <table border=0 cellspacing="0" cellpadding="10" width="100%">
        <tr>
            <th colspan="3" style="text-align: right">ID Sertifikat : BPR-CERTIFICATE-{{$data->id}}</th>
        </tr>
        <tr>
            <td>Atas Nama</td>
            <td></td>
            <td width="75%">: {{$data->nasabah->nama}}</td>
        </tr>
        <tr>
            <td>Alamat</td>
            <td></td>
            <td>: {{$data->nasabah->alamat}}</td>
        </tr>
        <tr>
            <td>Terbilang</td>
            <td></td>
            <td>: {{terbilang($data->deposito->jumlah_deposito)}} rupiah</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><i> Rp., {{number_format($data->deposito->jumlah_deposito)}}</i></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="2">JANGKA WAKTU:</td>
            <td>: {{$data->deposito->jangka_waktu}} Bulan, Bunga : {{$data->deposito->bunga}} %</td>
        </tr>
        <tr>
            <td colspan="2">JATUH TEMPO:</td>
            <td>: {{\Carbon\Carbon::parse($data->deposito->jatuh_tempo)->format('d-m-Y')}}</td>
        </tr>
        
    </table>
    <br/>
    <table width="100%">
        <tr>
            <td width="60%"></td>
            <td>
                Banjarmasin, {{\Carbon\Carbon::today()->translatedFormat('d F Y')}}, <br/>
                
                Kepala Bank,
                <br/><br/><br/><br/><br/>


                <b><u>Syamsudin</u></b><br/>
                NIP. 19278979274981273

            </td>
        </tr>
    </table>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

$(document).ready(function(){
    window.print();
});
</script>
</html>