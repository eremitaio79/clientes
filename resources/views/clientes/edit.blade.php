<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edição de Clientes') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <p class="mb-4">Olá <strong>{{ Auth::user()->name }}</strong></p>

                    @can('level')
                        <p class="mb-4 text-end">
                            <a href="{{ route('cliente.index') }}" target="_self"
                                class="bg-gray-500 text-white rounded py-2 px-5">
                                Lista de clientes
                            </a>
                        </p>
                    @endcan

                    <p class="mb-4 text-end">
                        <a href="{{ route('meus.clientes', Auth::user()->id) }}" target="_self"
                            class="bg-gray-500 text-white rounded py-2 px-5">
                            Meus Clientes
                        </a>
                    </p>

                    @if (session('msg'))
                        <p id="message" class="bg-green-700 p-2 rounded-lg text-center text-white mb-5">
                            {{ session('msg') }}<br /><span id="countdown">5</span> segundos restantes
                        </p>
                    @endif

                    <script>
                        document.addEventListener("DOMContentLoaded", function() {
                            let countdown = 5; // Define a contagem inicial em segundos
                            const messageElement = document.getElementById("message");
                            const countdownElement = document.getElementById("countdown");

                            const countdownInterval = setInterval(function() {
                                countdown--; // Diminui a contagem a cada segundo
                                if (countdownElement) {
                                    countdownElement.textContent = countdown; // Atualiza o texto com a contagem regressiva
                                }

                                if (countdown <= 0) {
                                    clearInterval(countdownInterval); // Para o intervalo quando a contagem chega a zero
                                    if (messageElement) {
                                        messageElement.style.display = "none"; // Oculta a mensagem
                                    }
                                }
                            }, 1000); // 1000 ms = 1 segundo
                        });
                    </script>


                    <form action="{{ route('cliente.store') }}" method="POST" target="_self">
                        @csrf

                        <fieldset class="border-2 rounded-lg p-6">
                            <legend>&nbsp;Preencha todos os campos&nbsp;</legend>

                            <input type="hidden" name="user_id" id="user_id" value="{{ Auth::user()->id }}">

                            <div class="bg-gray-100 p-4 rounded overflow-hidden">
                                <label for="nome">Nome</label>
                                <input type="text" name="nome" id="nome" value="{{ $cliente->nome }}" class="w-full rounded"
                                    placeholder="Informe o nome" required autofocus />
                            </div>

                            <div class="bg-gray-100 p-4 rounded overflow-hidden">
                                <label for="email">E-mail</label>
                                <input type="email" name="email" id="email" value="{{ $cliente->email }}" class="w-full rounded"
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
