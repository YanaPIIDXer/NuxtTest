<template>
  <div class="container">
    <div>
      <h1 class="title">
        シンプルなTODOリスト
      </h1>
      <div class="unit">
          <div v-if="items.length > 0">
              <table border=1 style="width:80%; margin-left:10%;">
                  <caption>項目リスト</caption>
                  <tr><th>削除</th><th>項目</th></tr>
                  <tr v-for="item in items" :key="item">
                      <td><input type="checkbox"></td>
                      <td>{{ item }}</td>
                  </tr>
              </table>
          </div>
          <div v-else>
              項目を追加して下さい。
          </div>
          <input type="text" v-model="inputText" v-on:input="onInput" placeholder="TODO項目を入力"><br />
          <button v-on:click="onSend">送信</button>
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
            items: [],
            inputText: "",
        }
    },
    
    methods:
    {
        onInput: function(event)
        {
            this.inputText = event.target.value;
        },
        
        onSend: function()
        {
            this.items.push(this.inputText);
            this.inputText = "";
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
