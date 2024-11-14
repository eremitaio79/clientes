<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edição de Usuário - Nível de Acesso') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 mb-4">
                    <p class="mb-4">
                        Editando o nível de acesso do usuário <strong>{{ $user->name }}</strong>
                    </p>

                    <p>
                        Nível de acesso atual: <strong>{{ $user->level }}</strong>
                    </p>
                </div>

                <div class="p-6 text-gray-900 mb-4">
                    <form action="{{ route('user.update', $user->id) }}" method="post">
                        @csrf
                        @method('PUT')

                        <label for="level">Nível de Acesso</label><br />
                        <select name="level" id="level" class="py-1 px-8 rounded" required>
                            <option value="" selected disabled>Selecione o nível de acesso</option>
                            <option value="user">Usuário padrão</option>
                            <option value="admin">Administrador</option>
                        </select>

                        <p class="mt-3">
                            <button type="submit" class="bg-blue-900 text-white rounded py-1 px-5">
                                <i class="fa-solid fa-floppy-disk mr-3"></i>Salvar Alterações
                            </button>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
