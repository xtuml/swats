import conan


class ConanFile(conan.ConanFile):
    name = 'swats_fte'
    user = 'xtuml'
    version = '1.0'
    python_requires = 'xtuml_masl_conan/[>=5.0 <6]@xtuml'
    python_requires_extend = 'xtuml_masl_conan.MaslConanHelper'

    def omit_requirements(self):
        return ['nlohmann_json', 'boost']

    def config_options(self):
        self.options.include_mod = True
        self.options.sqlite = False
        self.options.inspector = False
        self.options.idm = False
