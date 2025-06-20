import conan


class ConanFile(conan.ConanFile):
    name = 'swats_events_bset'
    user = 'xtuml'
    version = '1.0'
    python_requires = 'xtuml_masl_conan/[>=5.0 <6]@xtuml'
    python_requires_extend = 'xtuml_masl_conan.MaslConanHelper'

    def requirements(self):
        super().requirements()
        self.requires('swats_events/1.0@xtuml')
        self.requires('swats_fte/1.0@xtuml')
        self.requires('swats_rp/1.0@xtuml')

    def omit_requirements(self):
        return ['xtuml_asn1', 'xtuml_transient', 'nlohmann_json', 'boost']

    def config_options(self):
        self.options.sqlite = False
        self.options.inspector = False
        self.options.idm = False
