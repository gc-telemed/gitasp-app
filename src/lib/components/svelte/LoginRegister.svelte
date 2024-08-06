<script lang="ts">
let responseMessage: string;

async function signIn(e: SubmitEvent) {
  e.preventDefault();
  try {
    const response = await fetch("/api/sign-in", {
      method: "POST",
      body: new FormData(e.currentTarget as HTMLFormElement),
    });
    if (!response.ok) {
      const errorData = await response.json();
      responseMessage = errorData.message || "Sign in failed";
    } else {
      const data = await response.json();
      responseMessage = data.message || "Sign in successful";
    }
  } catch (error) {
    console.error("Error during sign in:", error);
    responseMessage = "An unexpected error occurred";
  }
}


async function signUp(e: SubmitEvent) {
  e.preventDefault();
  const formData = new FormData(e.currentTarget as HTMLFormElement);
  if (formData.get("password") !== formData.get("passwordVerify")) {
    responseMessage = "Passwords do not match.";
    return;
  }
  try {
    const response = await fetch("/api/sign-up", {
      method: "POST",
      body: formData,
    });
    if (!response.ok) {
      const errorData = await response.json();
      responseMessage = errorData.message || "Sign up failed";
    } else {
      const data = await response.json();
      responseMessage = data.message || "Sign up successful";
    }
  } catch (error) {
    console.error("Error during sign up:", error);
    responseMessage = "An unexpected error occurred";
  }
}

</script>

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
    <form on:submit={signIn}>
      <div class="p-4 overflow-y-auto">
        <label
          for="input-user"
          class="block float-left text-md font-medium mb-2 dark:text-white"
          >Email/Username</label
        >
        <input
          type="text"
          id="input-user"
          name="username"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="you@example.com"
          autocomplete="username"
          autofocus
        />
      </div>
      <div class="pb-2 px-4 overflow-y-auto">
        <label
          for="input-pass"
          class="block float-left text-md font-medium mb-2 dark:text-white"
          >Password</label
        >
        <input
          type="password"
          id="input-pass"
          name="password"
          autocomplete="current-password"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="********"
        />
      </div>
      <div
        class="flex justify-between items-center gap-x-2 py-3 px-4 border-t dark:border-neutral-700"
      >
        <button
          type="reset"
          class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-800 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-700 dark:focus:bg-neutral-700"
          data-hs-overlay="#hs-focus-management-modal"
        >
          Cancel
        </button>
        {#if responseMessage}
        <p class="text-orange-500">{responseMessage}</p>
        {/if}
        <button
          type="submit"
          class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-transparent bg-primary text-white hover:bg-emerald-700 focus:outline-none focus:bg-emerald-700 disabled:opacity-50 disabled:pointer-events-none"
        >
          Sign In
        </button>
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
    <form on:submit={signUp}>
      <div class="p-4 overflow-y-auto">
        <label
          for="input-username"
          class="block float-left text-md font-medium mb-2 dark:text-white"
          >Email/Username</label
        >
        <input
          type="text"
          id="input-username"
          name="username"
          autocomplete="username"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="you@example.com"
          autofocus
        />
      </div>
      <div class="pb-2 px-4 overflow-y-auto">
        <label
          for="input-password"
          class="block float-left text-md font-medium mb-2 dark:text-white"
          >Password</label
        >
        <input
          type="password"
          id="input-password"
          name="password"
          autocomplete="new-password"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="********"
        />
      </div>
      <div class="pb-2 px-4 overflow-y-auto">
        <label
          for="input-pass2"
          class="block float-left text-md font-medium mb-2 dark:text-white"
          >Verify Password</label
        >
        <input
          type="password"
          id="input-pass2"
          name="passwordVerify"
          autocomplete="new-password"
          class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-primary focus:ring-primary dark:bg-neutral-900 dark:border-neutral-700 dark:placeholder-neutral-500 dark:text-neutral-400"
          placeholder="********"
        />
      </div>
      <div
        class="flex justify-between items-center gap-x-2 py-3 px-4 border-t dark:border-neutral-700"
      >
        <button
          type="reset"
          class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-800 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-700 dark:focus:bg-neutral-700"
          data-hs-overlay="#hs-focus-management-modal"
        >
          Cancel
        </button>
        {#if responseMessage}
        <p class="text-orange-500">{responseMessage}</p>
        {/if}
        <button
          type="submit"
          class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-transparent bg-primary text-white hover:bg-emerald-700 focus:outline-none focus:bg-emerald-700 disabled:opacity-50 disabled:pointer-events-none"
        >
          Sign Up
        </button>
      </div>
    </form>
  </div>
</div>
