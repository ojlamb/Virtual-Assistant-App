require_relative './base.rb'

module VirtualAssistant
  module Routes
    class TasksController < Base

      get '/tasks/new' do
        haml :'tasks/new'
      end

      delete '/tasks/:id' do
        task = Task.get(params[:id])
        task.tag_tasks.all.destroy
        task.destroy
        redirect '/'
      end

    end
  end
end
