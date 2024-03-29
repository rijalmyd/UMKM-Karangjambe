<div id="deleteModal"
    class="w-screen h-screen flex items-center justify-center bg-slate-800 bg-opacity-50 fixed top-0 left-0 right-0 bottom-0 hidden">
    <div class="bg-white text-slate-700 dark:text-slate-200 dark:bg-slate-600 p-7 rounded-xl max-w-96">
        <p class="font-semibold pb-3 text-lg">Konfirmasi Hapus User</p>
        <span>Apakah Anda yakin akan menghapus user <strong>{{ $user->name }}</strong>?</span>
        <div class="flex mt-7 justify-end">
            <button id="batal"
                class="bg-white dark:bg-slate-600 dark:border-slate-600 dark:hover:border-slate-500 dark:hover:bg-slate-500 dark:active:border-slate-400 dark:active:bg-slate-400 text-sm w-20 text-center p-2 border border-white rounded-lg mr-3 hover:shadow-lg hover:border-slate-200 active:bg-slate-200 transition-all duration-300 focus:outline-none">Batal</button>
            <form action="{{ route('user.destroy', $user->id) }}" method="post">
                @csrf
                @method('delete')
                <button type="submit"
                    class="bg-red-500 text-white text-sm border border-red-500 w-20 text-center shadow-lg p-2 rounded-lg hover:bg-red-600 active:border-red-500 active:bg-red-700 active:border-red-800 focus:outline-none">Hapus</button>
            </form>
        </div>
    </div>
</div>