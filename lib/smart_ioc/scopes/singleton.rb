# Singleton scope returns same bean instance on each call
class SmartIoC::Scopes::Singleton
  VALUE = :singleton

  def initialize
    @beans = {}
  end

  # @param bean_name [Class] bean class
  # @returns bean instance or nil if not stored
  def get_bean(bean_name:)
    @beans[bean_name]
  end

  # @param klass [Class] bean class
  # @param bean [Any Object] bean object
  # @returns nil
  def save_bean(klass, bean)
    @beans[klass] = bean
    nil
  end

  def clear
    # do nothing as singleton beans are being instantiated only once
  end

  def force_clear
    @beans = {}
    nil
  end
end
