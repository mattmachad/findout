<template>
    <div class="container d-flex justify-content-center align-items-center my-3">
      <div class="row w-100">
        <div class="p-5 col-md-5 bg-info rounded-start">
          <div class="fw-bold lh-1 text-white text-start mb-3" style="font-size: 4.5em;">
            Registre-se
            <hr class="border border-white border-3 bg-white">
          </div>
          <h2 class="mb-2 text-white">Usuário</h2>
          <div class="input-group input-group-sm mb-3">
            <input
              v-model="user.username"
              type="text" 
              class="form-control p-2" 
              arial-label=""
              aria-describedby="inputGroup-sizing-sm"
              placeholder="Crie um usuário"
            >
          </div>
          <h2 class="mb-2 text-white">Senha</h2>
          <div class="input-group input-group-sm mb-3">
            <input
              v-model="user.password"
              :type="visibility ? 'text' : 'password'" 
              class="form-control p-2" 
              arial-label=""
              aria-describedby="inputGroup-sizing-sm"
              placeholder="Crie uma senha"
            >
          </div>
          <h2 class="mb-2 text-white">Senha</h2>
          <div class="input-group input-group-sm mb-3">
            <input 
              v-model="user.confirmPassword"
              :type="visibility ? 'text' : 'password'" 
              class="form-control p-2" 
              arial-label=""
              aria-describedby="inputGroup-sizing-sm"
              placeholder="Digite sua senha novamente"
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mb-3">
            <div class="form-check">
                    <input 
                      class="form-check-input" 
                      type="checkbox" 
                      id="flexCheckIndeterminate" 
                      v-model="exibirSenha"
                    />
                    <label 
                      class="form-check-label text-black" 
                      for="flexCheckIndeterminate"
                    >
                      Exibir senha
                    </label>
              </div>
            <button @click="register()" type="button" class="btn btn-light text-dark" style="font-size: 1.5em;">
              Registrar
            </button>
           
          </div>
        </div>
        <div class="col-md-7 bg-white rounded-end d-flex align-items-center justify-content-center">
          <img src="../assets/images/loginAndRegister/register.webp" alt="" class="img-fluid" style="max-width: 80%;">
        </div>
      </div>

      <div :class="'alert alert-' + alertInfo.color" style="position: fixed; bottom: 1em; right: 1em;" role="alert" v-if="alertActivate">
        {{alertInfo.text}}
      </div>
    </div>
</template>
  
<script>
  export default {
    data: () => ({
      visibility: false ,
      user: {
        username: '',
        password: '',
        confirmPassword: ''
      },
      alertActivate: false,
      alertInfo: {
        color: 'danger',
        text: ''
      },
    }),
    methods: {
      changeVisibility() {
        this.visibility = !this.visibility
      },
      register() {
        this.alertActivate = false;
        
        if (!this.user.password || !this.user.username || !this.user.confirmPassword) {
          // return alert("Preencha todos os campos");
          this.alertInfo.color = 'danger';
          this.alertInfo.text = 'Preencha todos os campos';
          this.alertActivate = true
          return;
        }

        if (this.user.password !== this.user.confirmPassword) {
          // return alert("As senhas não são iguais!");
          this.alertInfo.color = 'danger';
          this.alertInfo.text = 'As senhas não são iguais!';
          this.alertActivate = true
          return;
        }


        const allUsers = JSON.parse(localStorage.getItem('allUsers'))
        const userExists = allUsers.some(user => user.username === this.user.name);

        if (userExists) {
          this.alertInfo.color = 'danger';
          this.alertInfo.text = 'Usuário já registrado';
          this.alertActivate = true
          return;
        }

        allUsers.push(this.user);
        localStorage.setItem('allUsers', JSON.stringify(allUsers));
        this.$router.push('/login');

      }
    },
    watch: {
      alertActivate(val) {
        if(val) {
          setTimeout(() => {
            this.alertActivate = false
          }, 5000);
        }
      }
    }
  };
</script>

<style>

</style>
