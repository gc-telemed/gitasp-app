<script lang="ts">
  import OAuthIn from "./OAuthIn.svelte";
  import OAuthUp from "./OAuthUp.svelte";

  let responseMessage: string;

  async function signInAction(e: SubmitEvent) {
    const formData = new FormData(e.currentTarget as HTMLFormElement);
    try {
      // await signIn("credentials", {
      //   username: formData.get("username"),
      //   password: formData.get("password"),
      //   redirect: false,
      // });
      window.location.href = "/cliniq";
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
    <OAuthIn/>
  </div>

  <!-- sign up -->
  <div
    id="horizontal-alignment-2"
    class="hidden"
    role="tabpanel"
    aria-labelledby="horizontal-alignment-item-2"
  >
    <OAuthUp/>
  </div>
</div>
