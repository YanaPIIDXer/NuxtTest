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
                      <td><input type="checkbox" v-model="item.preDelete"></td>
                      <td>{{ item.text }}</td>
                  </tr>
              </table>
              <button v-on:click="onDelete" style="margin-top: 10px; margin-bottom: 30px;">削除</button>
          </div>
          <div v-else>
              項目を追加して下さい。
          </div>
          <div v-if="hasError" style="color:#FF0000; size=24px">エラー</div>
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
            hasError: false,
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
            if(this.inputText === "")
            {
                this.hasError = true;
                return;
            }
            
            this.items.push({text: this.inputText, preDelete: false});
            this.inputText = "";
            this.hasError = false;
        },

        onDelete: function()
        {
            for(var i = this.items.length -1; i >=0; i--)
            {
                if(this.items[i].preDelete)
                {
                    this.items.splice(i, 1);
                }
            }
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
