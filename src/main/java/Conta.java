import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Conta {

    private boolean ClienteEspecial;
    private int saldo;
    private int novoSaldoEspecial;
    private int novoSaldoComum;
    private int valor;

    @Given("^Um cliente (especial|comum) com saldo atual de -(\\d+) reais$")
    public void um_cliente_especial_com_saldo_atual_de_reais(String ClienteEspecial, int saldo) throws Throwable {
        this.ClienteEspecial = true;
        this.saldo = -200;
    }

    @When("^for solicitado um saque no valor de (\\d+) reais$")
    public void for_solicitado_um_saque_no_valor_de_reais(int valor) throws Throwable {
        this.valor = 100;

        if (ClienteEspecial) {
            saldo -= valor;
            novoSaldoEspecial = saldo;
            
        } else if(ClienteEspecial = false) {
            if (saldo >= valor) {
                saldo -= valor;
                novoSaldoComum = saldo;
                  
            } else {
                System.out.println("Saldo Insuficiente");
            }
        }
    }

    @Then("^deve efetuar o saque e atualizar o saldo da conta para -(\\d+) reais$")
    public void deve_efetuar_o_saque_e_atualizar_o_saldo_da_conta_para_reais() throws Throwable {
       if(ClienteEspecial = true) {
    	   System.out.println("Saque efetuado com sucesso. Novo saldo: " + novoSaldoEspecial);
       }else if(ClienteEspecial = false){
    	   System.out.print("Saque efetuado com sucesso. Novo Saldo: " + novoSaldoComum);
       }
    }
}
