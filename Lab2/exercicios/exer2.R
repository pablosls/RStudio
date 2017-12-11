attach(Salario)

# instalar o pacote dplyr do Hardley WickHam

library(dplyr)

grupo <- group_by(Salario, id)
grupo


agregar <- summarize(grupo, salario_m=mean(salario_m), 
                     data_pagamento_min=min(data_pagamento),
                     data_pagamento_max=max(data_pagamento))



agregar



agregar2 <- summarize(grupo, salario_medio=mean(salario_m), 
                      primeiro_pagamento=min(data_pagamento), 
                      ultimo_pagamento=max(data_pagamento)
                      )

agregar2

#RFG   

