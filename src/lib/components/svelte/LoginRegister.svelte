<div class="border-b border-gray-200 dark:border-neutral-700">
  <nav
    class="-mb-0.5 flex justify-center gap-x-6"
    aria-label="Tabs"
    role="tablist"
    aria-orientation="horizontal"
  >
    <button
      type="button"
      class="hs-tab-active:font-semibold hs-tab-active:border-primary hs-tab-active:text-primary py-4 px-1 inline-flex items-center gap-x-2 border-b-2 border-transparent text-lg whitespace-nowrap text-gray-500 hover:text-emerald-600 focus:outline-none focus:text-primary disabled:opacity-50 disabled:pointer-events-none dark:text-neutral-400 dark:hover:text-blue-500 active"
      id="horizontal-alignment-item-1"
      aria-selected="true"
      data-hs-tab="#horizontal-alignment-1"
      aria-controls="horizontal-alignment-1"
      role="tab"
    >
      Login
    </button>
    <button
      type="button"
      class="hs-tab-active:font-semibold hs-tab-active:border-primary hs-tab-active:text-primary py-4 px-1 inline-flex items-center gap-x-2 border-b-2 border-transparent text-lg whitespace-nowrap text-gray-500 hover:text-emerald-600 focus:outline-none focus:text-primary disabled:opacity-50 disabled:pointer-events-none dark:text-neutral-400 dark:hover:text-blue-500"
      id="horizontal-alignment-item-2"
      aria-selected="false"
      data-hs-tab="#horizontal-alignment-2"
      aria-controls="horizontal-alignment-2"
      role="tab"
    >
      Register
    </button>
  </nav>
</div>

<!-- sign in -->
<div class="mt-3">
  <div
    id="horizontal-alignment-1"
    role="tabpanel"
    aria-labelledby="horizontal-alignment-item-1"
  >
    <form method="post" action="/api/sign-in">
      <div class="p-4 overflow-y-auto">
        <label
          for="input-label"
          class="block text-sm font-medium mb-2 dark:text-white"
          >Email/Username</label
        >
        <input
          type="text"
          id="input-label"
          name="username"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="you@example.com"
          autofocus
        />
      </div>
      <div class="pb-2 px-4 overflow-y-auto">
        <label
          for="input-label"
          class="block text-sm foyou@site.comnt-medium mb-2 dark:text-white"
          >Password</label
        >
        <input
          type="password"
          id="input-label"
          name="password"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="********"

        />
      </div>
    </form>
  </div>

  <!-- sign up -->
  <div
    id="horizontal-alignment-2"
    class="hidden"
    role="tabpanel"
    aria-labelledby="horizontal-alignment-item-2"
  >
    <form method="post" action="/api/sign-up">
      <div class="p-4 overflow-y-auto">
        <label
          for="input-label"
          class="block text-sm font-medium mb-2 dark:text-white"
          >Email/Username</label
        >
        <input
          type="text"
          id="input-label"
          name="username"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="you@example.com"
          autofocus
        />
      </div>
      <div class="pb-2 px-4 overflow-y-auto">
        <label
          for="input-label"
          class="block text-sm foyou@site.comnt-medium mb-2 dark:text-white"
          >Password</label
        >
        <input
          type="password"
          id="input-label"
          name="password"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="********"
        />
      </div>
      <div class="pb-2 px-4 overflow-y-auto">
        <label
          for="input-label"
          class="block text-sm foyou@site.comnt-medium mb-2 dark:text-white"
          >Verify Password</label
        >
        <input
          type="password"
          id="input-label"
          name="password_verify"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="********"
        />
      </div>
    </form>
  </div>
</div>
