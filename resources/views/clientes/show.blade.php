<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Detalhes do Cliente Selecionado:') }} <strong>&nbsp;"{{ $cliente->nome }}"</strong>
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <p class="mb-4">Olá <strong>{{ Auth::user()->name }}</strong></p>

                    <p>
                        <a href="{{ route('meus.clientes', Auth::user()->id) }}" class="bg-blue-500 text-white rounded p-2">Meus Clientes</a>
                        <a href="{{ route('cliente.edit', $cliente->id) }}" class="bg-gray-500 text-white rounded p-2">Editar Dados do Cliente</a>
                        <a href="{{ route('confirma.delete', $cliente->id) }}" class="bg-red-500 text-white rounded p-2">Apagar Cliente</a>
                    </p>
                </div>

                <div class="p-6 text-gray-900">
                    <p><strong>Nome:&nbsp;</strong>{{ $cliente->nome }}</p>
                    <p><strong>E-mail:&nbsp;</strong>{{ $cliente->email }}</p>
                    <p><strong>Telefone:&nbsp;</strong>{{ $cliente->telefone }}</p>
                    <p><strong>Empresa:&nbsp;</strong>{{ $cliente->empresa }}</p>
                    <p><strong>Telefone Comercial:&nbsp;</strong>{{ $cliente->telefone_comercial }}</p>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
