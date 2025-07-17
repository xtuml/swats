import conan


class ConanFile(conan.ConanFile):
    name = 'swats_rp'
    user = 'xtuml'
    version = '1.0'
    python_requires = 'xtuml_masl_conan/5.1.2-12862-prerelease1@xtuml'
    python_requires_extend = 'xtuml_masl_conan.MaslConanHelper'

    def requirements(self):
        super().requirements()
        self.requires('masl_logger/[>=1.0 <2]@xtuml', transitive_libs=True, transitive_headers=True)
        self.requires('xtuml_masl_codegen/1.1.2-12862-prerelease1@xtuml', build=True, visible=False)

    def config_options(self):
        self.options.include_mod = True
        self.options.sqlite = False
        self.options.inspector = False
        self.options.idm = False
