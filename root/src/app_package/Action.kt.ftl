package ${packageName}.${feature?lower_case}

import ${mviInterface}.MviAction

sealed class ${feature}Action : MviAction {
    
    object Load${feature}Action : ${feature}Action()
}
