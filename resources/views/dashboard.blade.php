<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <p class="mb-4">Olá <strong>{{ Auth::user()->name }}</strong></p>
                </div>
            </div>

            <div class="bg-gray-100 overflow-hidden shadow-sm sm:rounded-lg mt-4  grid grid-cols-2 gap-4">
                <div class="bg-white p-6 text-gray-900">
                    <p class="mb-3">
                        Clientes Cadastrados: <strong>{{ count($clientes) }}</strong>
                    </p>
                    <p>
                        <a href="{{ route('meus.clientes', Auth::user()->id) }}" class="bg-blue-500 text-white rounded p-2">
                            &nbsp;&nbsp;&nbsp;Ver Clientes&nbsp;&nbsp;&nbsp;
                        </a>
                    </p>
                </div>
                
                <div class="bg-white p-6 text-gray-900">
                    <p class="mb-3">
                        Usuários Cadastrados: <strong>{{ count($users) }}</strong>
                    </p>
                    <p>
                        <a href="{{ route('user.index') }}" class="bg-blue-500 text-white rounded p-2">
                            &nbsp;&nbsp;&nbsp;Ver Usuários&nbsp;&nbsp;&nbsp;
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
