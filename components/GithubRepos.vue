<template>
    <div class="repo-list">
        <div v-for="repo in repos" :key="repo">
            <github-link user="YanaPIIDXer" :repository="repo" :displayText="repo" />
        </div>
    </div>
</template>

<script>
import GithubLink from "~/components/GithubLink.vue";

export default
{
    data()
    {
        return {
            repos:
            [
                "YanaPServer",
                "AnpanMMO",
                "NuxtTest",
                "GameLib",
                "jQueryExtension"
            ]
        }
    }
}
</script>

<style>
.repo-list {
  margin: 10px;
  display: flex;
  flex-flow: column;
  justify-content: flex-start;
}
</style>
