package ${packageName}.${feature?lower_case};

import androidx.lifecycle.ViewModel
import ${mviInterface}.MviViewModel

class ${feature}ViewModel : ViewModel(), MviViewModel<${feature}Intent, ${feature}ViewState> {
    
}

