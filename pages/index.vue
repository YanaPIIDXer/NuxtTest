<template>
  <div class="container">
    <div>
      <Logo />
      <h1 class="title">
        NuxtTest
      </h1>
      <div class="links">
        <a
          href="https://nuxtjs.org/"
          target="_blank"
          rel="noopener noreferrer"
          class="button--green"
        >
          Documentation
        </a>
        <github-link
          user="YanaPIIDXer"
          repository="NuxtTest"
        />
      </div>
      <br />
      <table border=1>
        <caption>プラクティス集</caption>
        <tr>
          <th>リンク</th><th>概要</th>
        </tr>
        <tr><td><nuxt-link to="/simple-count">単純カウント</nuxt-link></td><td>単純な数値のカウント</td></tr>
        <tr><td><nuxt-link to="/loading-screen">ローディング画面</nuxt-link></td><td>ローディング画面を想定した実験</td></tr>
      </table><br />
      <nuxt-link to="/repo-list">リポジトリリスト</nuxt-link><br />
    </div>
  </div>
</template>

<script>
import GithubLink from '~/components/GithubLink.vue';
  
export default
{
  components:
  {
    GithubLink
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

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
