package ${packageName}.${feature?lower_case};

import ${mviInterface}.MviResult

sealed class ${feature}Result : MviResult {
    
    object Load${feature}Result : ${feature}Result()
}
