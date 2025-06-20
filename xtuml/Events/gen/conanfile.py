import conan


class ConanFile(conan.ConanFile):
    name = 'swats_events'
    user = 'xtuml'
    version = '1.0'
    python_requires = 'xtuml_masl_conan/[>=5.0 <6]@xtuml'
    python_requires_extend = 'xtuml_masl_conan.MaslConanHelper'

    def requirements(self):
        super().requirements()
        self.requires('masl_logger/[>=1.0 <2]@xtuml', transitive_libs=True, transitive_headers=True)

    def config_options(self):
        self.options.include_mod = True
        self.options.sqlite = False
        self.options.inspector = False
        self.options.idm = False
