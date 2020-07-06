<template>
    <a
        :href=link
        target="_blank"
        rel="noopener noreferrer"
        class="button--grey"
    >
        {{displayText}}
    </a>
</template>

<script>
export default
{
    props:
    {
        user: String,
        repository: String,
        displayText:
        {
            type: String,
            default: "Github"
        }
    },
    data()
    {
        var url = "https://github.com/";
        if(this.user != undefined && this.repository != undefined)
        {
            url += this.user + "/";
            url += this.repository;
        }
        return {
            link: url
        }
    },
}
</script>