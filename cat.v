import os /* importação do módulo os */

/*
 * Como compilar:
 *   v cat.v
 *
 * Como executar:
 *   ./cat.v <FILE>
 *
 * Como compilar e executar:
 *   v run cat.v <FILE>
 */

/* Função principal */
fn main(){
  /*
   * Exibe os argumentos:
   * [0] == nome do programa
   * [1] == primeiro argumento após nome do programa

   *  println(os.args)
   */

  /* 
   * Variável mutável:
   *  em V, uma variável definida
   *  permanece sempre do mesmo tipo;
   *  então, "" == string e
   *  sempre será uma string,
   *  mesmo com a declaração `mut`
   */
  mut filename := ""
  if os.args.len > 1 {
    filename = os.args[1]
  }

  data := os.read_file(filename) or {
    println("Arquivo não pode ser lido")
    return
  }
  println(data)
}
