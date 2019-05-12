package ${packageName};

import com.quipper.school.assignment.viewmodel.MviViewState

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

