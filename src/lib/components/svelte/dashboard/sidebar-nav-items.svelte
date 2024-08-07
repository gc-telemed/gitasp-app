<script lang="ts">
  import { isCallChain } from "typescript";
  import type { SidebarNavItem } from "../../types";

  export let items: SidebarNavItem[] = [];

  console.log("items 2nd level", items);
</script>

{#if items.length}
  <ul class="flex flex-col space-y-1">
    {#each items as item, index (index)}
      {#if item.href}
        <li class="flex flex-row">
          <a
            href={item.href}
            class=""
            target={item.external ? "_blank" : ""}
            rel={item.external ? "noreferrer" : ""}
          >
            <div class="flex items-center px-3 w-full">
              {#if item.icon}
                <svelte:component this={item.icon} class="ml-3 mt-2 mx-4 h-5 w-5" />
              {/if}
              <span class="mt-1">{item.title}</span>
            </div>
            {#if item.label}
              <span
                class="ml-2 rounded-md bg-[#adfa1d] px-1.5 py-0.5 text-xs leading-none text-[#000000] no-underline group-hover:no-underline"
              >
                {item.label}
              </span>
            {/if}
          </a>
        </li>
      {:else}
        <span
          class="flex w-full cursor-not-allowed items-center rounded-md p-2 text-muted-foreground hover:underline"
        >
          {item.title}
        </span>
      {/if}
    {/each}
  </ul>
{/if}
