-- define all language properties

local lang = {
  common = {
    welcome = "Bem vindo. Pressione K para usar o menu. ~ n ~ último login: {1}",
    no_player_near = "~ r ~ Nenhum jogador perto de você.",
    invalid_value = "~ r ~ Valor inválido.",
    invalid_name = "~ r ~ Nome inválido.",
    not_found = "~ r ~ Não encontrado.",
    request_refused = "~ r ~ Pedido recusado.",
    wearing_uniform = "~ Tenha cuidado, você está vestindo um uniforme.",
    not_allowed = "~ não está permitido."
  },
  survival = {
    starving = "fome",
    thirsty = "sede"
  },
  money = {
    display = "{1} <span class=\"symbol\">$</span>",
    given = "Dar ~r~{1}$.",
    received = "Receber ~g~{1}$.",
    not_enough = "~ R ~ dinheiro insuficiente.",
    paid = "Pago ~r~{1}$.",
    give = {
      title = "Dar dinheiro",
      description = "Dê dinheiro ao jogador mais próximo.",
      prompt = "Quantidade para dar:"
    }
  },
  inventory = {
    title = "Inventário",
    description = "Abra o inventário.",
    iteminfo = "({1})<br /><br />{2}<br /><em>{3} kg</em>",
    info_weight = "peso {1}/{2} kg",
    give = {
      title = "Dar",
      description = "Dê itens ao jogador mais próximo.",
      prompt = "Quantidade para dar (max {1}):",
      given = "DEU ~r~{1} ~s~{2}.",
      received = "Recebido ~g~{1} ~s~{2}.",
    },
    trash = {
      title = "Lixo",
      description = "Destruir itens.",
      prompt = "Quantidade de lixo (max {1}):",
      done = "Trashed ~r~{1} ~s~{2}."
    },
    missing = "~r~Missing {2} {1}.",
    full = "~r~Inventario Cheio.",
    chest = {
      title = "BAU",
      already_opened = "~ R ~ Esse baú já foi aberto por outra pessoa.",
      full = "~r~Bau Cheio.",
      take = {
        title = "Pegar",
        prompt = "Quantidade para Pegar (max {1}):"
      },
      put = {
        title = "Colocar",
        prompt = "Quantidade para colocar (max {1}):"
      }
    }
  },
  atm = {
    title = "ATM",
    info = {
      title = "Info",
      bank = "Banco: {1} $"
    },
    deposit = {
      title = "Depositar",
      description = "Depositar",
      prompt = "Valor para deposito:",
      deposited = "~r~{1}$~s~ Depositado."
    },
    withdraw = {
      title = "Sacar",
      description = "Sacar",
      prompt = "Valor para saque:",
      withdrawn = "~g~{1}$ ~s~Retirado.",
      not_enough = "~ R ~ Você não tem dinheiro suficiente no banco."
    }
  },
  business = {
    title = "Câmara do Comércio",
    directory = {
      title = "Diretório",
      description = "Diretório de negócios.",
      dprev = "> Prev",
      dnext = "> Next",
      info = "<em>capital: </em>{1} $<br /><em>proprietário: </em>{2} {3}<br /><em>cadastro n°: </em>{4}<br /><em>telefone: </em>{5}"
    },
    info = {
      title = "Informações comerciais",
      info = "<em>name: </em>{1}<br /><em>capital: </em>{2} $<br /><em>capital transferir: </em>{3} $<br /><br/>Capital A transferência é a quantidade de dinheiro transferida para um período econômico comercial, o máximo é o capital da empresa."
    },
    addcapital = {
      title = "Adicionar capital",
      description = "Adicione capital ao seu negócio.",
      prompt = "Quantidade para adicionar ao capital da empresa:",
      added = "~r~{1}$ ~ s ~ adicionado ao capital da empresa."
    },
    launder = {
      title = "Lavagem de dinheiro",
      description = "Use seu negócio para lavar dinheiro sujo.",
      prompt = "Quantidade de dinheiro sujo para lavagem (max {1} $): ",
      laundered = "~g~{1}$ ~s~ lavado.",
      not_enough = "~ R ~ Não há dinheiro sujo suficiente."
    },
    open = {
      title = "Negócios abertos",
      description = "Abra seu negócio, o capital mínimo é {1} $.",
      prompt_name = "Nome da empresa (não pode mudar após, máximo{1} chars):",
      prompt_capital = "capital inicial (min {1})",
      created = "~ g ~ Empresa criadas."
      
    }
  },
  cityhall = {
    title = "Prefeitura",
    identity = {
      title = "Nova identidade",
      description = "Crie uma nova identidade, custo = {1} $.",
      prompt_firstname = "Digite seu primeiro nome:",
      prompt_name = "Digite seu Sobrenome:",
      prompt_age = "Insira sua idade:",
    },
    menu = {
      title = "Identidade",
      info = "<em>Name: </em>{1}<br /><em>Primeiro nome: </em>{2}<br /><em>Age: </em>{3}<br /><em>Cadastro n°: </em>{4}<br /><em>Celular: </em>{5}<br /><em>Endereco: </em>{7}, {6}"
    }
  },
  police = {
    title = "Policia",
    wanted = "Nivel de Procurado {1}",
    not_handcuffed = "~ r ~ Não manuseado",
    cloakroom = {
      title = "Bengaleiro",
      uniform = {
        title = "Uniforme",
        description = "colocar uniforme."
      }
    },
    pc = {
      title = "PC",
      searchreg = {
        title = "Pesquisa de registro",
        description = "Procurar identidade por registro.",
        prompt = "Insira o número de registro:"
      },
      closebusiness = {
        title = "Fechar negócios",
        description = "Fechar o negócio do jogador mais próximo.",
        request = "Você tem certeza de fechar o negócio? {3} propriedade de {1} {2} ?",
        closed = "~g~Negócios fechados."
      },
      trackveh = {
        title = "Rastrear Veículo",
        description = "Acompanhe um veículo pelo seu número de registro.",
        prompt_reg = "Insira o número de registro:",
        prompt_note = "Insira uma nota de rastreamento / motivo:",
        tracking = "~b~O rastreamento começou.",
        track_failed = "~b~Rastreamento de {1}~s~ ({2}) ~n~~r~Falhou.",
        tracked = "Monitorados {1} ({2})"
      },
      records = {
        show = {
          title = "Mostrar registros",
          description = "Mostrar registros policiais por número de registro."
        },
        delete = {
          title = "Limpar registros",
          description = "Registros policiais claros por número de registo.",
          deleted = "~b~Registros policiais eliminados"
        }
      }
    },
    menu = {
      handcuff = {
        title = "Algema",
        description = "Algemar / desalgemar o jogador mais próximo."
      },
      putinveh = {
        title = "Coloque no veículo",
        description = "Coloque o jogador algemado mais próximo no veículo mais próximo, como passageiro."
      },
      getoutveh = {
        title = "Saia do veículo",
        description = "Saia do veículo o jogador algemado mais próximo."
      },
      askid = {
        title = "Peça ID",
        description = "Peça o cartão de identificação do jogador mais próximo.",
        request = "Você quer dar seu cartão de identificação ?",
        request_hide = "Ocultar o cartão de identificação.",
        asked = "Perguntando ID"
      },
      check = {
        title = "Revistar o jogador",
        description = "Verifique dinheiro, estoque e armas do jogador mais próximo.",
        request_hide = "Ocultar o relatório revistado .",
        info = "<em>Dinheiro: </em>{1} $<br /><br /><em>inventario: </em>{2}<br /><br /><em>Armas: </em>{3}",
        checked = "Você está sendo verificado."
      },
      seize = {
        seized = "Apreendido{2} ~r~{1}",
        weapons = {
          title = "Prender armas",
          description = "Apreender as armas de jogador mais próximas",
          seized = "~b~Suas armas foram apreendidas."
        },
        items = {
          title = "Apreender ilegais",
          description = "Prender itens ilegais",
          seized = "~b~Seu material ilegal foi apreendido."
        }
      },
      jail = {
        title = "Cadeia",
        description = "Prender / Soltar jogador mais próximo dentro / da prisão mais próxima.",
        not_found = "~r~Nenhuma prisão encontrada.",
        jailed = "~b~Preso.",
        unjailed = "~b~engaiolado.",
        notify_jailed = "~b~Você foi preso.",
        notify_unjailed = "~b~Você foi engaiolado."
      },
      fine = {
        title = "Bem",
        description = "Melhor jogador.",
        fined = "~b~Finished ~s~{2} $ for ~b~{1}.",
        notify_fined = "~b~Você foi multado~s~ {2} $ for ~b~{1}.",
        record = "[Bem] {2} $ for {1}"
      },
      store_weapons = {
        title = "Armazenar armas",
        description = "Armazene suas armas em seu inventário."
      }
    },
    identity = {
      info = "<em>Name: </em>{1}<br /><em>primeiro nome: </em>{2}<br /><em>Age: </em>{3}<br /><em>Cadastro n°: </em>{4}<br /><em>telefone: </em>{5}<br /><em>negócio: </em>{6}<br /><em>negócio capital: </em>{7} $<br /><em>Endereco: </em>{9}, {8}"
    }
  },
  emergency = {
    menu = {
      revive = {
        title = "Reanimar",
        description = "Reanimar o jogador mais próximo.",
        not_in_coma = "~r~não em coma."
      }
    }
  },
  phone = {
    title = "Telefone",
    directory = {
      title = "Diretório",
      description = "Abra o diretório do telefone.",
      add = {
        title = "> Add",
        prompt_number = "Digite o número de telefone para adicionar:",
        prompt_name = "Digite o nome da entrada:",
        added = "~g~Entrada adicionada."
      },
      sendsms = {
        title = "Enviar SMS",
        prompt = "Digite a mensagem (max {1} chars):",
        sent = "~g~ Enviado para n°{1}.",
        not_sent = "~r~ n°{1} indisponível."
      },
      sendpos = {
        title = "Posição de envio",
      },
      remove = {
        title = "Remover"
      }
    },
    sms = {
      title = "Historico SMS",
      description = "Histórico do SMS recebido.",
      info = "<em>{1}</em><br /><br />{2}",
      notify = "SMS~b~ {1}:~s~ ~n~{2}"
    },
    smspos = {
      notify = "Posição SMS ~b~ {1}"
    },
    service = {
      title = "Servicos",
      description = "Ligue para um serviço ou um número de emergência.",
      prompt = "Se necessário, insira uma mensagem para o serviço:",
      ask_call = "Recebendo {1} ligacao, você aceita? <em>{2}</em>",
      taken = "~r~Esta chamada já está sendo tomada."
    },
    announce = {
      title = "Anunciar",
      description = "Publique um anúncio visível a todos por alguns segundos.",
      item_desc = "{1} $<br /><br/>{2}",
      prompt = "Anuncie conteúdo (10-1000 chars): "
    }
  },
  emotes = {
    title = "Animacoes",
    clear = {
      title = "> Limpar",
      description = "Limpe todos os emotes em execução."
    }
  },
  home = {
    buy = {
      title = "Comprar",
      description = "Compre uma casa aqui, o preço é {1} $.",
      bought = "~g~Comprou.",
      full = "~r~O lugar está cheio.",
      have_home = "~r~Você já possui uma casa."
    },
    sell = {
      title = "Vender",
      description = "Vender sua casa para {1} $",
      sold = "~ g ~ Vendido.",
      no_home = "~ r ~ Você não tem uma casa aqui."
    },
    intercom = {
      title = "Interfone",
      description = "Use o interfone para entrar em uma casa.",
      prompt = "Numero:",
      not_available = "~ r ~ Não disponível.",
      refused = "~ R ~ Recusou-se a entrar.",
      prompt_who = "Diga quem você é:",
      asked = "Perguntando...",
      request = "Alguém quer abrir sua porta de casa: <em>{1}</em>"
    },
    slot = {
      leave = {
        title = "Sair"
      },
      ejectall = {
        title = "Ejetar tudo",
        description = "Ejetar todos os visitantes domésticos, incluindo você, e fechar a casa."
      }
    },
    wardrobe = {
      title = "Wardbroe",
      save = {
        title = "> Save",
        prompt = "Save name:"
      }
    },
    gametable = {
      title = "Mesa de jogo",
      bet = {
        title = "Aposta inicial",
        description = "Comece uma aposta com os jogadores perto de você, o vencedor será selecionado aleatoriamente.",
        prompt = "Valor da aposta:",
        request = "[Aposta] Você quer apostar {1} $ ?",
        started = "~g~ Aposta começou."
      }
    }
  },
  garage = {
    title = "Garagem ({1})",
    owned = {
      title = "Comprados",
      description = "veiculos Comprados."
    },
    buy = {
      title = "comprar",
      description = "Comprar veiculo.",
      info = "{1} $<br /><br />{2}"
    },
    sell = {
      title = "Vender",
      description = "Vender Veiculo."
    },
    rent = {
      title = "Aluguel",
      description = "Alugue um veículo para a sessão (até você se desconectar)."
    },
    store = {
      title = "Loja",
      description = "Coloque seu veículo atual na garagem."
    }
  },
  vehicle = {
    title = "Veiculo",
    no_owned_near = "~ R ~ Nenhum veículo por perto.",
    trunk = {
      title = "Porta Malas",
      description = "Abra o porta-malas do veículo."
    },
    detach_trailer = {
      title = "Desanexar trailer",
      description = "Desanexar trailer."
    },
    detach_towtruck = {
      title = "Desanexartow truck",
      description = "Desanexar tow truck."
    },
    detach_cargobob = {
      title = "Desanexar cargobob",
      description = "Desanexar cargobob."
    },
    lock = {
      title = "Trancado/Aberto",
      description = "Trancar ou Abrir o veículo."
    },
    engine = {
      title = "Ligar on/off",
      description = "Ligar ou Desligar o motor."
    },
    asktrunk = {
      title = "pedir abrir porta malas",
      asked = "~ g ~ Pedindo ...",
      request = "Você quer abrir o porta-malas ?"
    },
    replace = {
      title = "Substitua o veículo",
      description = "Substitua no solo o veículo mais próximo."
    },
    repair = {
      title = "Reparar veiculo",
      description = "Repare o veículo mais próximo."
    }
  },
  gunshop = {
    title = "Gunshop ({1})",
    prompt_ammo = "Amount of ammo to buy for the {1}:",
    info = "<em>body: </em> {1} $<br /><em>ammo: </em> {2} $/u<br /><br />{3}"
  },
  market = {
    title = "Market ({1})",
    prompt = "Amount of {1} to buy:",
    info = "{1} $<br /><br />{2}"
  },
  skinshop = {
    title = "Skinshop"
  },
  cloakroom = {
    title = "Cloakroom ({1})",
    undress = {
      title = "> Undress"
    }
  },
  itemtr = {
    informer = {
      title = "Informante Ilegal",
      description = "{1} $",
      bought = "~ g ~ Posição enviada ao seu GPS."
    }
  },
  mission = {
    blip = "Missao ({1}) {2}/{3}",
    display = "<span class=\"nome\">{1}</span> <span class=\"step\">{2}/{3}</span><br /><br />{4}",
    cancel = {
      title = "Cancelar missao"
    }
  },
  aptitude = {
    title = "Aptitudes",
    description = "Show aptitudes.",
    lose_exp = "Aptitude ~b~{1}/{2} ~r~-{3} ~s~exp.",
    earn_exp = "Aptitude ~b~{1}/{2} ~g~+{3} ~s~exp.",
    level_down = "Aptitude ~b~{1}/{2} ~r~lose level ({3}).",
    level_up = "Aptitude ~b~{1}/{2} ~g~level up ({3}).",
    display = {
      group = "{1}: ",
      aptitude = "--- {1} | exp {2} | lvl {3} | progress {4}%"
    }
  }
}

return lang
