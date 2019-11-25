class ConsultasController < ApplicationController
  def index
  end
  
  def rnc(rnc)
  	agent = Mechanize.new
  	page = agent.get 'http://www.dgii.gov.do/app/WebApps/Consultas/NCF/ConsultaNCF.aspx'
  	form = page.form id: 'form1'

  	rnc.gsub!(/\D/, '')
  	len = rnc.length

  	return {valid: false}.to_json unless len == 9 or len == 11

  	form.txtRNC = rnc
  	form.txtNCF = ncf
  	form.add_field! 'btnConsultar'
  	form.add_field! '__EVENTTARGET'
  	form.add_field! '__EVENTARGUMENT'
  	form.add_field! '__LASTFOCUS'
  	form.btnConsultar = 'Consultar'

  	ret = form.submit

  	ret.content =~ /Comprobante Fiscal digitado es v.{1,2}lido./
  	{valid: !!$&}.to_json
  end
end
