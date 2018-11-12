package com.creating.www.controller;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.creating.www.beans.alarms.AlarmBean;
import com.creating.www.beans.alarms.AlarmPairBean;
import com.creating.www.beans.results.AnalysisBean;
import com.creating.www.beans.root.ConfigParamBean;
import com.creating.www.beans.routers.ElecBean;
import com.creating.www.beans.rules.RuleBean;
import com.creating.www.services.alarmsrela.AlarmRelaService;
import com.creating.www.services.elecsrela.ElecRelaService;
import com.creating.www.services.results.ResultsService;
import com.creating.www.services.root.RootConfigRelaService;
import com.creating.www.services.rulesrela.RuleRelaService;

@RestController
@RequestMapping("/areas/")
public class AreasController {
	static AlarmRelaService alarmRelaServ = new AlarmRelaService();
	static ElecRelaService elecRelaServ = new ElecRelaService();
	static RuleRelaService ruleRelaServ = new RuleRelaService();
	static RootConfigRelaService rootConfigRelaServ = new RootConfigRelaService();
	static ResultsService resultsServ = new ResultsService();

	@RequestMapping("left/{pathname001}/{pathname002}")
	public ModelAndView jump(@PathVariable String pathname001, @PathVariable String pathname002) {
		ModelAndView _mv = new ModelAndView("/" + pathname001 + "/" + pathname002);
		if (pathname002.equals("alarms")) {

			List<AlarmBean> list = alarmRelaServ.queryAllAlarms();
			// System.out.println("-----------------"+list.size());
			_mv.addObject("alarms", list);

		} else if (pathname002.equals("elecs")) {
			List<ElecBean> list = elecRelaServ.queryAllElecs();
			// System.out.println("-----------------"+list.size());
			_mv.addObject("elecs", list);
		} else if (pathname002.equals("rules")) {
			List<RuleBean> list = ruleRelaServ.queryAllRules();
			// System.out.println("-----------------"+list.size());
			_mv.addObject("rules", list);
		} else if (pathname002.equals("config")) {
			List<ConfigParamBean> configParams = rootConfigRelaServ.queryAllConfigParams();
			_mv.addObject("configParams", configParams);
		} else if (pathname001.equals("results")) {
			if (pathname002.equals("rrelation")) {
				List<AlarmPairBean> results = alarmRelaServ.queryAllAlarmPair();
				//System.out.println("--------------"+results.size());
				_mv.addObject("results", results);
			} else if (pathname002.equals("groups")) {
				List<AnalysisBean> results = resultsServ.queryAllResults();
				_mv.addObject("results", results);
			} else if (pathname002.equals("final")) {
				List<AnalysisBean> results = resultsServ.queryAllResults();
				_mv.addObject("results", results);
			}
		}
		return _mv;
	}
}
