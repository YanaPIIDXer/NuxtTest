<template>
  <div class="container">
    <div>
      <h1 class="title">
        ローディング画面
      </h1>
      <div class="unit">
          <div v-if="!isLoading">
              ここに何かを表示
          </div>
          <div v-else>
              ロード中
          </div>
          <button v-on:click="beginLoad" v-bind:disabled="isLoading">再読み込み</button>
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
            isLoading: false,
        }
    },
    
    created()
    {
        this.isLoading = false;
        this.beginLoad();
    },

    methods:
    {
        beginLoad: function()
        {
            if(this.isLoading) { return; }

            this.isLoading = true;
            setTimeout(this.onLoaded, 3000);
        },

        onLoaded: function()
        {
            this.isLoading = false;
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
