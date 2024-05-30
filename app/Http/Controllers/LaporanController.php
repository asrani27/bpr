<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Bibit;
use App\Models\Nasabah;
use App\Models\Pegawai;
use App\Models\Setoran;
use App\Models\Deposito;
use App\Models\Pencairan;
use App\Models\Pengajuan;
use App\Models\Sertifikat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class LaporanController extends Controller
{

    public function index()
    {
        return view('admin.laporan.index');
    }
    public function pegawai()
    {
        $data = Pegawai::get();
        return view('admin.laporan.pegawai', compact('data'));
    }

    public function nasabah()
    {
        $data = Nasabah::get();
        return view('admin.laporan.nasabah', compact('data'));
    }

    public function perorangan()
    {
        $nomor = request()->get('nomor');

        $check = Deposito::where('nomor', $nomor)->first();
        if ($check != null) {
            $data = Pencairan::where('deposito_id', $check->id)->get();
            return view('admin.laporan.pencairan', compact('data'));
        } else {

            Session::flash('info', 'Tidak ada data');
            return back();
        }
    }

    public function mutasi()
    {
        $nomor = request()->get('nomor');

        $check = Deposito::where('nomor', $nomor)->first();
        if ($check != null) {
            $data = Setoran::where('deposito_id', $check->id)->get();
            return view('admin.laporan.mutasi', compact('data', 'check'));
        } else {
            Session::flash('info', 'Tidak ada data');
            return back();
        }
    }
    public function periode(Request $req)
    {
        $from = $req->mulai;
        $to = $req->sampai;

        if ($req->jenis == 'deposito') {
            $data = Deposito::whereBetween('tanggal', [$from, $to])->get();
            return view('admin.laporan.deposito', compact('data', 'from', 'to'));
        }
        if ($req->jenis == 'setoran') {
            $data = Setoran::whereBetween('tanggal', [$from, $to])->get();
            return view('admin.laporan.setoran', compact('data', 'from', 'to'));
        }
        if ($req->jenis == 'sertifikat') {
            $data = Sertifikat::whereBetween('tanggal', [$from, $to])->get();
            return view('admin.laporan.sertifikat', compact('data', 'from', 'to'));
        }
        if ($req->jenis == 'pencairan') {
            $data = Pencairan::whereBetween('tanggal', [$from, $to])->get();
            return view('admin.laporan.pencairan', compact('data', 'from', 'to'));
        }
    }
}
