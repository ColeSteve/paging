package com.hp.web.action;

import com.hp.service.ITrainService;
import com.hp.util.PageInfo;
import com.hp.web.form.TrainForm;
import com.opensymphony.xwork2.ModelDriven;

public class TrainAction extends BaseAction implements ModelDriven<TrainForm>{

	/**
	 *@version: V1.0
	 *@Description:
	 *@author keer1 
	 */
	private static final long serialVersionUID = 1L;
	private PageInfo pageInfo=new PageInfo();
	
	public PageInfo getPageInfo() {
		return pageInfo;
	}
	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	private ITrainService trainSevice;
	private TrainForm trainForm;
	public void setTrainSevice(ITrainService trainSevice) {
		this.trainSevice = trainSevice;
	}
	@Override
	public TrainForm getModel() {
		trainForm=new TrainForm();
		return trainForm;
	}
	
	public String train(){
	//	List<TrainForm> list=trainSevice.getAllTrainInfo();
	   
		//List list=trainSevice.getTrainInfoByPage(5,trainForm.getPageNo());
		//request.setAttribute("trainList", list);
		
		pageInfo.setAction("trainAction_train");
		pageInfo.setPageSize(5);
		trainSevice.getTrainInfoByPage(pageInfo);
		return "train";
	}

}
