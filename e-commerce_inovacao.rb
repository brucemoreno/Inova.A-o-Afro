class ECOM

    def initialize       
     menu_principal()
    end

   def valores
        @carrinho = @carrinho.to_f
        @produtoA = 50.00
        @produtoB = 200.00
        @produtoC = 100.00
   end

    def compras
        valores()               
        puts "Selecione a opção desejada:"
        puts "[1] Produto A: R$#{@produtoA}"
        puts "[2] Produto B: R$#{@produtoB}"
        puts "[3] Produto C: R$#{@produtoC}"
        puts "[4] Voltar ao menu principal"       
        puts "Subtotal R$#{@carrinho}"
        puts "----------------------------------"
        input = gets.chomp.to_i     
        case input
        when 1          
            puts "Digite a quantidade desejada:"
            multiplicador = gets.chomp.to_i
            @carrinho += (multiplicador * @produtoA)            
        when 2
            puts "Digite a quantidade desejada:"
            multiplicador = gets.chomp.to_i
            @carrinho += (multiplicador * @produtoB)           
        when 3
            puts "Digite a quantidade desejada:"
            multiplicador = gets.chomp.to_i
            @carrinho += (multiplicador * @produtoC)
        when 4
            menu_principal()                
        end       
            puts "Seu subtotal é de #{@carrinho}"
            puts "-------------------------------------------"
            puts "Pressione 0 para voltar ao menu de compras"
           loop do
            input = gets.chomp.to_i
            if input == 0
                compras()
            else
                puts "Pressione 0 para voltar ao menu de compras"
            end
            
        end         
        end
    end

    def menu_principal
        puts "Selecione a opção desejada"
        puts "[1] Comprar"
        puts "[2] Sair"
        puts "----------------------------------"
        input = gets.chomp.to_i
    case input
    when 1
        compras()
    when 2
        puts "Até breve!!!"
    else
        puts "Seleção inválida escolha entre a opção número 1 ou número 2"
    end
  end

ECOM.new
