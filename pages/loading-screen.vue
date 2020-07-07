<template>
  <div class="container">
    <div>
      <h1 class="title">
        ローディング画面
      </h1>
      <div class="unit">
          <div>ここに何かを表示</div>
          <button v-on:click="beginLoad">再読み込み</button>
      </div>
      <nuxt-link to="/">トップページ</nuxt-link><br />
    </div>
  </div>
</template>

<script>
export default
{
    methods:
    {
        beginLoad: function()
        {
            alert("Load Start.");
            setTimeout(this.onLoaded, 3000);
        },

        onLoaded: function()
        {
            alert("Load Finished.");
        },
    },
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
