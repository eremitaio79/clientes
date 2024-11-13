<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Lista de Usuários') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <p class="mb-4">Olá <strong>{{ Auth::user()->name }}</strong></p>
                </div>

                <div class="p-6 text-gray-900">
                    <div class="p-3 bg-gray-100 rounded-lg mb-4">
                        {{ $users->links() }}
                    </div>

                    <table class="table-auto w-full">
                        <thead class="text-left bg-gray-100">
                            <tr>
                                <th class="text-center">Nivel</th>
                                <th>Nome</th>
                                <th class="p-4">E-mail</th>
                                <th>Data de Cadastro</th>
                                <th>Nível de Acesso</th>

                                @can('level')
                                    <th>Ações</th>
                                @endcan
                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($users as $user)
                                <tr class="hover:bg-gray-100">
                                    <td class="text-center">
                                        @if ($user->level == 'admin')
                                            <i class="fa-solid fa-user-ninja"></i>
                                        @else
                                            <i class="fa-regular fa-user"></i>
                                        @endif
                                    </td>
                                    <td>{{ $user->name }}</td>
                                    <td class="p-2">{{ $user->email }}</td>
                                    <td>{{ $user->created_at }}</td>
<<<<<<< HEAD
                                    <td>
                                        <a href="#">Editar</a>
                                    </td>
=======
                                    <td>{{ $user->level }}</td>

                                    @can('level')
                                        <td>
                                            <a href="{{ route('user.edit', $user->id) }}">Editar Nível...</a>
                                        </td>
                                    @endcan
>>>>>>> users
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <div class="p-3 bg-gray-100 rounded-lg mt-4">
                        {{ $users->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
