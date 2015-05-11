module PlanHelper
  def get_available_plans
    available_plans = []
    Plan.all.each { |plan| available_plans << {plan_name: plan.plan_name,plan_desc: plan.plan_desc, plan_price: plan.plan_price}}
    available_plans
  end
end
