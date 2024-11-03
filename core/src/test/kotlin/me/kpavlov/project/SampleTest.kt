package me.kpavlov.project

import assertk.assertThat
import assertk.assertions.isEqualTo
import org.junit.jupiter.api.Test

class SampleTest {
    @Test
    fun `Should assert Hi`() {
        assertThat(Sample().sayHi()).isEqualTo("Hi")
    }
}
