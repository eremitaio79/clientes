<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Clientes') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <p class="mb-4">Olá <strong>{{ Auth::user()->name }}</strong></p>

                    <form action="{{ route('cliente.store') }}" method="POST" target="_self">
                        @csrf

                        <fieldset class="border-2 rounded-lg p-6">
                            <legend>&nbsp;Preencha todos os campos&nbsp;</legend>

                            <input type="hidden" name="user_id" id="user_id" value="{{ Auth::user()->id }}">

                            <div class="bg-gray-100 p-4 rounded overflow-hidden">
                                <label for="nome">Nome</label>
                                <input type="text" name="nome" id="nome" class="w-full rounded"
                                    placeholder="Informe o nome" required autofocus />
                            </div>

                            <div class="bg-gray-100 p-4 rounded overflow-hidden">
                                <label for="email">E-mail</label>
                                <input type="email" name="email" id="email" class="w-full rounded"
                                    placeholder="Informe o e-mail" required />
                            </div>

                            <div class="bg-gray-100 p-4 rounded overflow-hidden">
                                <label for="telefone">Telefone</label>
                                <input type="tel" name="telefone" id="telefone" class="w-full rounded"
                                    placeholder="Informe o telefone" required />
                            </div>

                            <div class="bg-gray-100 p-4 rounded overflow-hidden">
                                <label for="empresa">Empresa</label>
                                <input type="text" name="empresa" id="empresa" class="w-full rounded"
                                    placeholder="Informe o nome da empresa" required />
                            </div>

                            <div class="bg-gray-100 p-4 rounded overflow-hidden">
                                <label for="telefone_comercial">Telefone Comercial</label>
                                <input type="tel" name="telefone_comercial" id="telefone_comercial"
                                    class="w-full rounded" placeholder="Informe o telefone comercial" required />
                            </div>

                            <div class="bg-gray-100 p-4 rounded overflow-hidden text-end">
                                <input type="submit" value="Salvar" class="bg-blue-900 text-white rounded py-1 px-5">
                                <input type="reset" value="Limpar" class="bg-red-500 text-white rounded py-1 px-3">
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
