package itextoinfo

class ItextoInfoTagLib {
	static namespace = "itexto"
	
	def actions = {attrs, body ->
		
		def actions = []
		for (uri in attrs.controller.getURIs()) {
			if (! actions.contains(attrs.controller.getClosurePropertyName(uri))) {
				actions.add(attrs.controller.getClosurePropertyName(uri))
			}
		}
		actions.sort()
		out << "<ul>"
		for (action in actions) {
			out << "<li>${action}</li>"
		}
		out << "</ul>"
	}
	
	def views = {attrs, body ->
		def views = []
		for (uri in attrs.controller.getURIs()) {
			def view = attrs.controller.getViewByURI(uri)
			if (view && ! views.contains(view)) {
				views.add(view)
			}
		}
		views.sort()
		out << "<ul>"
		for (view in views) {
			out << "<li>${view}</li>"
		}
		out << "</ul>"
	}
	
	def domain_properties = {attrs, body ->
		def properties = attrs.domain.getProperties()
		out << "<ul>"
		for (property in properties) {
			out << "<li><b>${property.name}</b><br/><ul>"
			out << "<li>Field name: ${attrs.domain.getFieldName(property.name)}</li>"
			out << "<li>OneToMany: ${attrs.domain.isOneToMany(property.name)}</li>"
			out << "<li>ManyToOne: ${attrs.domain.isManyToOne(property.name)}</li>"
			out << "<li>Bidirectional: ${attrs.domain.isBidirectional(property.name)}</li>"
			
			out << "</ul></li>"
		}	
		out << "</ul>"
	}
	
}
