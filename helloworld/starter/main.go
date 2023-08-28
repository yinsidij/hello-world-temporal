package main

import (
	"context"
	"log"

	"go.temporal.io/sdk/client"
	dummyworkflows "github.com/confluentinc/cloudpartnerships/common/temporal/workflow/dummy"
    "fmt"
    "sync"
	"time"
    "github.com/gofrs/uuid"
)


const NUMBER_OF_WORKFLOWS = 5000
const NUMBER_OF_BATCH_SIZE = 100

func main() {
	// The client is a heavyweight object that should be created once per process.
	c, err := client.Dial(client.Options{Namespace:          "cloudpartnerships"})
	// c, err := client.NewLazyClient(client.Options{
	// 	HostPort:           "127.0.0.1:7233",
	// 	Namespace:          "cloudpartnerships",
	// })
	if err != nil {
		log.Fatalln("Unable to create client", err)
	}

	defer c.Close()


	NUMBER_OF_BATCH := NUMBER_OF_WORKFLOWS / NUMBER_OF_BATCH_SIZE

	u := uuid.Must(uuid.NewV4())
    // Create a wait group to wait for all workflows to complete
    var wg sync.WaitGroup

	// // Create a slice to hold the workflow futures for all workflows
	futures := make([]client.WorkflowRun, NUMBER_OF_WORKFLOWS)

    // // Create a slice to hold the workflow results
    // results := make([]string, NUMBER_OF_WORKFLOWS)

	start := time.Now()
	queue_flag := true

	for batch := 0; batch < NUMBER_OF_BATCH; batch++ {
		// Submit multiple workflows
		for i := 0; i < NUMBER_OF_BATCH_SIZE; i++ {
			// Add to the wait group
			wg.Add(1)

			// Start a new goroutine to execute the workflow
			go func(i int) {
				defer wg.Done()

				var workflowOptions client.StartWorkflowOptions
					// Create a new workflow options
				if queue_flag {
					workflowOptions = client.StartWorkflowOptions{
						ID:        fmt.Sprintf("hello_world_workflowID_from_billing-%s-%d", u, i),
						TaskQueue: "marketplacetest",
					}
				} else {
					workflowOptions = client.StartWorkflowOptions{
						ID:        fmt.Sprintf("hello_world_workflowID_from_billing-%s-%d", u, i),
						TaskQueue: "cloudpartnerships",
					}
				}
				// queue_flag = !queue_flag

				// Execute the workflow and get the future
				we, err := c.ExecuteWorkflow(context.Background(), workflowOptions, dummyworkflows.DummyWorkflowSample)
				if err != nil {
					print(err)
				}
				log.Println("Started workflow", "WorkflowID", we.GetID(), "RunID", we.GetRunID())
                // Add the future to the slice
                futures[i] = we

			}(batch*NUMBER_OF_BATCH_SIZE+i)
		}
		time.Sleep(5 * time.Second)
	}

    // Wait for all workflows to complete
    wg.Wait()
	fmt.Printf("%d workflows are dispatched\n", NUMBER_OF_WORKFLOWS)

    // Process the results for all workflows
    for i, future := range futures {
        var result string
        err := future.Get(context.Background(), &result)
        if err != nil {
            fmt.Println(err)
        }

        fmt.Printf("Workflow %d completed with result: %s\n", i, result)
    }
	elapsed := time.Since(start)
    log.Printf("%d workflow took %s", NUMBER_OF_WORKFLOWS, elapsed)
}




	// workflowOptions := client.StartWorkflowOptions{
	// 	ID:        "hello_world_workflowID_from_billing",
	// 	TaskQueue: "marketplacetest",
	// }


	// we, err := c.ExecuteWorkflow(context.Background(), workflowOptions, dummyworkflows.DummyWorkflowSample)
	// if err != nil {
	// 	log.Fatalln("Unable to execute workflow", err)
	// }

	// log.Println("Started workflow", "WorkflowID", we.GetID(), "RunID", we.GetRunID())

	// // Synchronously wait for the workflow completion.
	// var result string
	// err = we.Get(context.Background(), &result)
	// if err != nil {
	// 	log.Fatalln("Unable get workflow result", err)
	// }
	// log.Println("Workflow result:", result)




    // // Create a wait group to wait for all workflows to complete
    // var wg sync.WaitGroup

    // // Create a slice to hold the workflow results
    // results := make([]string, NUMBER_OF_WORKFLOWS)
    // // Submit multiple workflows
    // for i := 0; i < NUMBER_OF_WORKFLOWS; i++ {
    //     // Add to the wait group
    //     wg.Add(1)

    //     // Start a new goroutine to execute the workflow
    //     go func(i int) {
    //         defer wg.Done()

    //         // Create a new workflow options
    //         workflowOptions := client.StartWorkflowOptions{
    //             ID:        fmt.Sprintf("hello_world_workflowID_from_billing-%d", i),
    //             TaskQueue: "marketplacetest",
    //         }

    //         // Execute the workflow and get the result
    //         we, err := c.ExecuteWorkflow(context.Background(), workflowOptions, dummyworkflows.DummyWorkflowSample)
    //         if err != nil {
    //             fmt.Println(err)
    //         }

	// 		log.Println("Started workflow", "WorkflowID", we.GetID(), "RunID", we.GetRunID())
	// 		var result string
	// 		err = we.Get(context.Background(), &result)
    //         // Add the result to the slice
    //         results[i] = result
    //     }(i)
    // }

    // // Wait for all workflows to complete
    // wg.Wait()

    // // Process the results
    // for i, result := range results {
    //     fmt.Printf("Workflow %d result: %s\n", i, result)
    // }

