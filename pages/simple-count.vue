<template>
  <div class="container">
    <div>
      <h1 class="title">
        単純カウント
      </h1>
      <div class="unit">
        <div>{{ count }}</div><br />
        <button v-on:click="increment">インクリメント</button><br />
      </div>
      <nuxt-link to="/">トップページ</nuxt-link><br />
    </div>
  </div>
</template>

<script>
export default
{
    data()
    {
        return {
            count: 0
        }
    },

    methods:
    {
        increment: function()
        {
            this.count++;
        }
    }
}
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family:
    'Quicksand',
    'Source Sans Pro',
    -apple-system,
    BlinkMacSystemFont,
    'Segoe UI',
    Roboto,
    'Helvetica Neue',
    Arial,
    sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.unit {
    margin-bottom: 50px;
}
</style>
