package ${packageName}.${feature?lower_case};

import com.quipper.school.assignment.viewmodel.MviViewState

import io.reactivex.Observable
import io.reactivex.ObservableTransformer

class ${feature}ActionProcessor {
    
    var processor =
        ObservableTransformer<${feature}Action, ${feature}Result> {actions ->
            actions.publish {shared ->
                shared
                    .cast(${feature}Result::class.java)
                    .mergeWith(
                        shared.filter {
                            it !is  ${feature}Action
                        }.flatMap {w ->
                            Observable.error<${feature}Result>(
                                IllegalArgumentException("Unknown Action type: $w")
                            )
                        }
                    )
            }
        }
}

