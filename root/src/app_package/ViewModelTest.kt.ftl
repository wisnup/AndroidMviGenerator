package ${packageName}.${feature?lower_case};

import com.quipper.testing.runner.QLearnJUnitRunner
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(QLearnJUnitRunner::class)
class ${feature}ViewModelTest {

    lateinit var viewModel: ${feature}ViewModel

    @Before
    fun setup() {
        viewModel = ${feature}ViewModel()
    }

    @Test
    fun `Load${feature}Intent should set view state success`() {
        // TODO update test
    }
}