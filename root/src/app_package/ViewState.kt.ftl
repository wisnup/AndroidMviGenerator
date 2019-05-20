package ${packageName}.${feature?lower_case}

import ${mviInterface}.MviViewState

data class ${feature}ViewState(
    val error: Throwable?
) : MviViewState {
    
    companion object {
        fun idle(): ${feature}ViewState {
            return ${feature}ViewState(
                error = null
            )
        }
    }
}
