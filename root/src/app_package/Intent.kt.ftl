package ${packageName}.${feature?lower_case};

import ${mviInterface}.MviIntent

sealed class ${feature}Intent : MviIntent {
    
    object Load${feature}Intent : ${feature}Intent()
}
