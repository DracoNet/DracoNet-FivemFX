
-- define all language properties

local lang = {
  common = {
    welcome = "Velkommen til serveren. Tryk på F9 for at bruge menuen.~n~",
    no_player_near = "~r~Ingen spiller i nærheden af ​​dig.",
    invalid_value = "~r~Ugyldig værdi.",
    invalid_name = "~r~Ugyldigt navn.",
    not_found = "~r~Ikke fundet.",
    request_refused = "~r~Anmodning afvist.",
    wearing_uniform = "~r~Pas på, du har uniform på.",
    not_allowed = "~r~Ikke tilladt."
  },
  weapon = {
    pistol = "Pistol"
  },  
  survival = {
    starving = "sultende",
    thirsty = "tørstig"
  },
  money = {
    display = "<span class=\"symbol\">$</span> {1}",
    bdisplay = "<span class=\"symbol\">$</span> {1}",
    given = "Given ~r~{1}$.",
    received = "Modtaget ~g~{1}$.",
    not_enough = "~r~Ikke nok penge.",
    paid = "betalt ~r~{1}$.",
    give = {
      title = "Giv penge",
      description = "Giv penge til nærmeste spiller.",
      prompt = "Beløb at give:"
    }
  },
  inventory = {
    title = "Beholdning",
    description = "Åbn oversigten.",
    iteminfo = "({1})<br /><br />{2}<br /><em>{3} kg</em>",
    info_weight = "vægt {1}/{2} kg",
    give = {
      title = "Give",
      description = "Giv varer til nærmeste spiller.",
      prompt = "Beløb at give (max {1}):",
      given = "Givet ~r~{1} ~s~{2}.",
      received = "Modtaget ~g~{1} ~s~{2}.",
    },
    trash = {
      title = "Affald",
      description = "Ødelægge varer.",
      prompt = "Hvor meget er skrald (max {1}):",
      done = "Ødelægt ~r~{1} ~s~{2}."
    },
    missing = "~r~Mangler {2} {1}.",
    full = "~r~Taske fuld.",
    chest = {
      title = "Tasken",
      already_opened = "~r~Denne Taske er allerede åbnet af en anden.",
      full = "~r~Taske fuld.",
      take = {
        title = "Tage",
        prompt = "Beløb, der kan tages (max {1}):"
      },
      put = {
        title = "Sætte",
        prompt = "Beløb at sætte (max {1}):"
      }
    }
  },
  atm = {
    title = "Bank",
    info = {
      title = "Info",
      bank = "bank: {1} $"
    },
    deposit = {
      title = "Depositum",
      description = "tegnebog til bank",
      prompt = "Indtast beløb for indbetaling:",
      deposited = "~r~{1}$~s~ deponeret."
    },
    withdraw = {
      title = "Hæv penge",
      description = "bank til tegnebog",
      prompt = "Indtast beløb for at sætte penge tilbage:",
      withdrawn = "~g~{1}$ ~s~trukket tilbage.",
      not_enough = "~r~Du har ikke penge nok i banken."
    }
  },
  business = {
    title = "Handelskammer",
    directory = {
      title = "Vejviser",
      description = "Virksomhedskatalog.",
      dprev = "> forrige",
      dnext = "> Næste",
      info = "<em>kapital: </em>{1} $<br /><em>ejer: </em>{2} {3}<br /><em>registrering n°: </em>{4}<br /><em>telefon: </em>{5}"
    },
    info = {
      title = "Virksomhedsoplysninger",
      info = "<em>navn: </em>{1}<br /><em>kapital: </em>{2} $<br /><em>kapitaloverførsel: </em>{3} $<br /><br/>Kapitaloverførsel er mængden af ​​penge, der overføres til en erhvervsøkonomisk periode, maksimum er virksomhedskapitalen."
    },
    addcapital = {
      title = "Tilføj kapital",
      description = "Tilføj kapital til din virksomhed.",
      prompt = "Beløb, der skal tilføjes til virksomhedskapitalen:",
      added = "~r~{1}$ ~s~føjet til virksomhedskapitalen."
    },
    launder = {
      title = "Hvidvaskning",
      description = "Brug din virksomhed til at vaske beskidte penge.",
      prompt = "Mængden af ​​beskidte penge til hvidvaskning (max {1} $): ",
      laundered = "~g~{1}$ ~s~hvidvaskes.",
      not_enough = "~r~Ikke nok beskidte penge."
    },
    open = {
      title = "Åben forretning",
      description = "Åbn din virksomhed, minimale kapital er {1} $.",
      prompt_name = "Virksomhedens navn (kan ikke ændres efter, maks {1} chars):",
      prompt_capital = "Indledende kapital (min {1})",
      created = "~g~Virksomhed skabt."
      
    }
  },
  cityhall = {
    title = "Rådhus",
    identity = {
      title = "Ny identitet",
      description = "Opret en ny identitet, koster = {1} $.",
      prompt_firstname = "Indtast dit fornavn:",
      prompt_name = "Indtast dit efternavn:",
      prompt_age = "Indtast din alder:",
    },
    menu = {
      title = "Identitet",
      info = "<em>Fornavn: </em>{2}<br /><em>Efternavn: </em>{1}<br /><em>Alder: </em>{3}<br /><em>Registrering n°: </em>{4}<br /><em>Telefon: </em>{5}<br /><em>Adresse: </em>{7}, {6}"
    }
  },
  police = {
    title = "Politi",
    wanted = "Ønsket rang {1}",
    not_handcuffed = "~r~Ikke i håndjern",
    cloakroom = {
      title = "garderobe",
      uniform = {
        title = "Uniform",
        description = "sæt uniform."
      }
    },
    pc = {
      title = "PC",
      searchreg = {
        title = Registreringssøgning",
        description = "Søg efter identitet ved registrering.",
        prompt = "Indtast registreringsnummer:"
      },
      closebusiness = {
        title = "Luk forretning",
        description = "Luk forretning hos nærmeste spiller.",
        request = "Er du sikker på at lukke forretningen {3} ejet af {1} {2} ?",
        closed = "~g~Business closed."
      },
      trackveh = {
        title = "Spor køretøj",
        description = "Spor et køretøj med sit registreringsnummer.",
        prompt_reg = "Indtast registreringsnummer:",
        prompt_note = "Indtast en sporingsnote/grund:",
        tracking = "~b~Sporing startede.",
        track_failed = "~b~Sporing af {1}~s~ ({2}) ~n~~r~mislykkedes.",
        tracked = "sporet {1} ({2})"
      },
      records = {
        show = {
          title = "Vis straffeatest",
          description = "Vis politiets optegnelser efter registreringsnummer."
        },
        delete = {
          title = "Ryd straffeatest",
          description = "Ryd politiets optegnelser efter registreringsnummer.",
          deleted = "~b~Politiets optegnelser slettet"
        }
      }
    },
    menu = {
      handcuff = {
        title = "håndjern",
        description = "håndjern/fjernhåndjern på nærmeste spiller."
      },
      putinveh = {
        title = "Sæt i køretøjet",
        description = "Sæt den nærmeste håndjernede spiller i nærmeste køretøj som passager."
      },
      getoutveh = {
        title = "Kom ud køretøjet",
        description = "Kom ud af bilen nærmeste håndjernede spiller."
      },
      askid = {
        title = "Spørg ID",
        description = "Spørg ID-kort fra nærmeste spiller.",
        request = "Vil du give dit id-kort ?",
        request_hide = "Skjul ID-kortet.",
        asked = "Spørgende ID..."
      },
      check = {
        title = "Kontroller spiller",
        description = "Tjek penge, lager og våben til den nærmeste spiller.",
        request_hide = "Skjul kontrolrapporten.",
        info = "<em>penge: </em>{1} $<br /><br /><em>taske: </em>{2}<br /><br /><em>våben: </em>{3}",
        checked = "Du er blevet kontrolleret."
      },
      seize = {
        seized = "beslaglagt {2} ~r~{1}",
        weapons = {
          title = "Grib våben",
          description = "Grib nærmeste spiller våben",
          seized = "~b~Dine våben er blevet beslaglagt."
        },
        items = {
          title = "Undersøg person for ulovlig ting",
          description = "Tag ulovlige genstande",
          seized = "~b~Dine ulovlige ting er blevet beslaglagt."
        }
      },
      jail = {
        title = "Fængsel",
        description = "Fængsel/Løslad nærmeste spiller i/fra nærmeste fængsel.",
        not_found = "~r~Ingen fængsel fundet.",
        jailed = "~b~fængslet.",
        unjailed = "~b~Løslad fra Fængsel.",
        notify_jailed = "~b~Du er blevet fængslet.",
        notify_unjailed = "~b~Du er blivet Løslad ."
      },
      fine = {
        title = "Bøde",
        description = "giv bøde til den nærmeste spiller.",
        fined = "~b~Bøde ~s~{2} $ for ~b~{1}.",
        notify_fined = "~b~Du er blevet bødet ~s~ {2} $ for ~b~{1}.",
        record = "[Bøde] {2} $ for {1}"
      },
      store_weapons = {
        title = "Gem våben",
        description = "Gem dine våben i din Taske."
      }
    },
    identity = {
      info = "<em>Navn: </em>{1}<br /><em>Fornavn: </em>{2}<br /><em>Alder: </em>{3}<br /><em>Registrering n°: </em>{4}<br /><em>Telefon: </em>{5}<br /><em>Forretning: </em>{6}<br /><em>Virksomhedskapital: </em>{7} $<br /><em>Adresse: </em>{9}, {8}"
    }
  },
  emergency = {
    menu = {
      revive = {
        title = "Genoplive",
        description = "Genoplive den nærmeste spiller.",
        not_in_coma = "~r~Ikke i koma."
      }
    }
  },
  phone = {
    title = "Telefon",
    directory = {
      title = "Vejviser",
      description = "Åbn telefonkataloget.",
      add = {
        title = "➕ Add",
        prompt_number = "´Indtast det telefonnummer, der skal tilføjes:",
        prompt_name = "Indtast indtastningsnavnet:",
        added = "~g~tilføjet."
      },
      sendsms = {
        title = "Sende Besked",
        prompt = "Indtast meddelelsen (max {1} chars):",
        sent = "~g~ Sendt til n°{1}.",
        not_sent = "~r~ n°{1} utilgængelig."
      },
      sendpos = {
        title = "Send position",
      },
      remove = {
        title = "Fjerne"
      }
    },
    sms = {
      title = "Besked historie",
      description = "Modtaget Besked.",
      info = "<em>{1}</em><br /><br />{2}",
      notify = "Besked~b~ {1}:~s~ ~n~{2}"
    },
    smspos = {
      notify = "SMS-position ~b~ {1}"
    },
    service = {
      title = "Service",
      description = "Ring til en tjeneste eller et nødnummer.",
      prompt = "Indtast en besked for tjenesten, hvis det er nødvendigt:",
      ask_call = "Modtaget {1} Ring, tager du det ? <em>{2}</em>",
      taken = "~r~Dette opkald er allerede taget."
    },
    announce = {
      title = "Annoncere",
      description = "Send en meddelelse, der er synlig for alle i et par sekunder.",
      item_desc = "{1} $<br /><br/>{2}",
      prompt = "Annoncer indhold (10-1000 chars): "
    }
  },
  emotes = {
    title = "Handlinger",
    clear = {
      title = "> Clear",
      description = "Ryd alle løbende følelser."
    }
  },
  home = {
    buy = {
      title = "Købe",
      description = "Køb et hjem her, prisen er {1} $.",
      bought = "~g~Købt.",
      full = "~r~Stedet er fuld.",
      have_home = "~r~Du har allerede et hjem."
    },
    sell = {
      title = "Sælge",
      description = "Sælg dit hjem til {1} $",
      sold = "~g~solgt.",
      no_home = "~r~Du har ikke et hjem her."
    },
    intercom = {
      title = "Samtaleanlæg",
      description = "Brug intercom til at komme ind i et hjem.",
      prompt = "Nummer:",
      not_available = "~r~Ikke tilgængelig.",
      refused = "~r~Nægtet at komme ind.",
      prompt_who = "Sig hvem du er:",
      asked = "Spørg...",
      request = "Nogen ønsker at åbne din hjemdør: <em>{1}</em>"
    },
    slot = {
      leave = {
        title = "Forlade"
      },
      ejectall = {
        title = "Skub alle ud",
        description = "Skub alle hjemmebesøgende, herunder dig, og luk hjemmet."
      }
    },
    wardrobe = {
      title = "Garderobe",
      save = {
        title = "> Gem",
        prompt = "Gem navn:"
      }
    },
    gametable = {
      title = "Spil bord",
      bet = {
        title = "Begynd væddemål",
        description = "Start et væddemål med spillere nær dig, vinderen bliver tilfældigt valgt.",
        prompt = "Bet beløb:",
        request = "[BET] Vil du satse {1} $ ?",
        started = "~g~Bet startede."
      }
    }
  },
  garage = {
    title = "Garage ({1})",
    owned = {
      title = "Ejet",
      description = "Ejede køretøjer."
    },
    buy = {
      title = "Køb",
      description = "Køb køretøjer.",
      info = "{1} $<br /><br />{2}"
    },
    sell = {
      title = "Sælge",
      description = "Sælge køretøjer."
    },
    rent = {
      title = "Leje",
      description = "Lej et køretøj til sessionen (indtil du afbryder forbindelsen)."
    },
    store = {
      title = "garagen",
      description = "Sæt dit nuværende køretøj i garagen."
    }
  },
  vehicle = {
    title = "Køretøj",
    no_owned_near = "~r~Intet ejet køretøj i nærheden.",
    trunk = {
      title = "Bagagerum",
      description = "Åbn køretøjets bagagerum."
    },
    detach_trailer = {
      title = "Løsn trailer",
      description = "Løsn trailer."
    },
    detach_towtruck = {
      title = "Løsn trukket lastbil",
      description = "Løsn trukket lastbil."
    },
    detach_cargobob = {
      title = "Løs cargobob",
      description = "Løs cargobob."
    },
    lock = {
      title = "Lås/Åben",
      description = "Lås eller oplås køretøjet."
    },
    engine = {
      title = "motor on/off",
      description = "Start eller stop motoren."
    },
    asktrunk = {
      title = "Spørg åben bagagerum",
      asked = "~g~Spørg...",
      request = "Vil du åbne bagagerummet ?"
    },
    replace = {
      title = "Udskift køretøj",
      description = "Udskift det nærmeste køretøj på jorden."
    },
    repair = {
      title = "Reparer køretøj",
      description = "Reparer nærmeste køretøj."
    }
  },
  gunshop = {
    title = "VåbenButik ({1})",
    prompt_ammo = "Mængde ammunition at købe til {1}:",
    info = "<em>body: </em> {1} $<br /><em>ammunition: </em> {2} $/u<br /><br />{3}"
  },
  market = {
    title = "Marked ({1})",
    prompt = "Mængde af {1} at købe:",
    info = "{1} $<br /><br />{2}"
  },
  skinshop = {
    title = "TøjButik"
  },
  cloakroom = {
    title = "Garderobe ({1})",
    undress = {
      title = "> tag tøj af"
    }
  },
  itemtr = {
    informer = {
      title = "Ulovlig Informer",
      description = "{1} $",
      bought = "~g~Position sendt til din GPS."
    }
  },
  mission = {
    blip = "Mission ({1}) {2}/{3}",
    display = "<span class=\"navn\">{1}</span> <span class=\"trin\">{2}/{3}</span><br /><br />{4}",
    cancel = {
      title = "Annuller mission"
    }
  },
  aptitude = {
    title = "Færdigheder",
    description = "Vis Færdigheder.",
    lose_exp = "Færdigheder ~b~{1}/{2} ~r~-{3} ~s~exp.",
    earn_exp = "Færdigheder ~b~{1}/{2} ~g~+{3} ~s~exp.",
    level_down = "Færdigheder ~b~{1}/{2} ~r~lose level ({3}).",
    level_up = "Færdigheder ~b~{1}/{2} ~g~level up ({3}).",
    display = {
      group = "{1}: ",
      aptitude = "--- {1} | exp {2} | lvl {3} | fremskridt {4}%"
    }
  }
}

return lang
