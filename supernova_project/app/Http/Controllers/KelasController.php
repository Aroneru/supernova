<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use Illuminate\Http\Request;

class KelasController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        // return response()->json([
        //     'message' => 'Hello, this is the KelasController index method Test.',
        //     'request' => $request->all(),
        // ]);
        {
            return response()->json(Kelas::all(), 200);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|string|max:255',
            'deskripsi' => 'nullable|string',
            'tingkat' => 'required|integer',
            'tahun_ajar' => 'required|integer',
            'status' => 'required|in:aktif,non-aktif',
        ]);

        $kelas = Kelas::create([
            'nama' => $request->nama,
            'deskripsi' => $request->deskripsi,
            'tingkat' => $request->tingkat,
            'tahun_ajar' => $request->tahun_ajar,
            'status' => $request->status,
        ]);

        return response()->json($kelas, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $kelas = Kelas::find($id);

        if (!$kelas) {
            return response()->json(['message' => 'Kelas not found'], 404);
        }

        return response()->json($kelas, 200);
    }
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $kelas = Kelas::find($id);

        if (!$kelas) {
            return response()->json(['message' => 'Kelas not found'], 404);
        }

        $request->validate([
            'nama' => 'sometimes|required|string|max:255',
            'deskripsi' => 'nullable|string',
            'tingkat' => 'sometimes|required|integer',
            'tahun_ajar' => 'sometimes|required|integer',
            'status' => 'sometimes|required|in:aktif,non-aktif',
        ]);

        if ($request->has('nama_kelas')) {
            $kelas->nama_kelas = $request->nama_kelas;
        }

        if ($request->has('deskripsi')) {
            $kelas->deskripsi = $request->deskripsi;
        }

        $kelas->save();

        return response()->json($kelas, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $kelas = Kelas::find($id);

        if (!$kelas) {
            return response()->json(['message' => 'Kelas not found'], 404);
        }

        $kelas->delete();

        return response()->json(['message' => 'Kelas berhasil dihapus'], 200);
    }
}
