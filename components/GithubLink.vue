<template>
    <a
        :href=Link
        target="_blank"
        rel="noopener noreferrer"
        class="button--grey"
    >
        {{DisplayText}}
    </a>
</template>

<script>
export default
{
    data()
    {
        return {
            DisplayText: "GitHub",
            Link: "https://github.com/nuxt/nuxt.js"
        }
    }
}
</script>