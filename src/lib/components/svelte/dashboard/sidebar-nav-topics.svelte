<script lang="ts">

  import ArrowDownUp from "lucide-svelte/icons/arrow-down-up";
  import type { SidebarNavItem } from "../../types";
  import DocSideBarNavItems from "./sidebar-nav-items.svelte";
  export let items: SidebarNavItem[] = [];

  console.log("items", items);
</script>

{#if items.length}
    {#each items as item, index (index)}

      <div class="pb-4">
        <div class="flex justify-between">
          <h4
            class="mb-1 rounded-md px-2 py-1 text-sm font-semibold flex flex-row"
          >
            <svelte:component this={item.icon} class="mr-2 mt-[2px] h-6 w-6" />
            <p class="text-lg">{item.title}</p>
          </h4>

            <button
              class="w-9 p-0"
            >
              <ArrowDownUp class="h-4 w-4" />
              <span class="sr-only">Toggle</span>
            </button>
            </div>

        {#if item?.items}
          {#if item?.items?.length}
            <DocSideBarNavItems items={item.items} />
          {/if}
        {/if}

      </div>
    {/each}

{/if}
