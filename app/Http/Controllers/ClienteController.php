<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use Illuminate\Http\Request;

class ClienteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('clientes.index', [
            'clientes' => Cliente::orderBy('nome')->paginate('1')
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('clientes.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request);
        $cliente = new Cliente();
        
        // Campos da tabela clientes na mesma ordem da tabela e com os mesmo nomes.
        $cliente->user_id = $request->user_id;
        $cliente->nome = $request->nome;
        $cliente->email = $request->email;
        $cliente->telefone = $request->telefone;
        $cliente->empresa = $request->empresa;
        $cliente->telefone_comercial = $request->telefone_comercial;

        $cliente->save();

        return redirect()->route('cliente.create')->with('msg', 'Cliente cadastrado com sucesso!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Cliente $cliente)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Cliente $cliente)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Cliente $cliente)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Cliente $cliente)
    {
        //
    }
}
