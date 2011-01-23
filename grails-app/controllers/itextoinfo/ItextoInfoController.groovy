package itextoinfo

class ItextoInfoController {

	def grailsApplication
	
	
    def index = { }
	
	def springBeans = {
		def contextoSpring = grailsApplication.getParentContext()
		def bean_names = contextoSpring.getBeanDefinitionNames()
		
		def beans = []
		for (bean_name in bean_names.sort()) {
			def bean = [:]
			bean.put "name", bean_name
			bean.put "value", contextoSpring.getBean(bean_name)
			beans.add bean
		}
		
		[beans:beans]
	}
	
	def controllers = {
		def controllers = grailsApplication.getArtefacts("Controller")
		
		
		[controllers:controllers]
	}
	
	def domains = {
		def domains = grailsApplication.getArtefacts("Domain")
		def list_domains = []
		for (domain in domains) {
			def dmn = [:]
			dmn.put "name", domain.name
			dmn.put "value", domain
			list_domains.add(dmn)
		}
		[domains:list_domains]
	}
	
	
}
