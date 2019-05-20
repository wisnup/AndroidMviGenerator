package ${packageName}.${feature?lower_case}

import io.reactivex.Observable
import io.reactivex.ObservableTransformer

class ${feature}ActionProcessor {
    
    var processor =
        ObservableTransformer<${feature}Action, ${feature}Result> {actions ->
            actions.publish {shared ->
                shared // TODO route processor based on action type
                    .cast(${feature}Result::class.java)
                    .mergeWith(
                        shared.filter {
                            it !is  ${feature}Action.Load${feature}Action // TODO filter unknown action type
                        }.flatMap {w ->
                            Observable.error<${feature}Result>(
                                IllegalArgumentException("Unknown Action type: $w")
                            )
                        }
                    )
            }
        }
}
